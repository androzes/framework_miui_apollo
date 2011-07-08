.class public Landroid/content/SyncQueue;
.super Ljava/lang/Object;
.source "SyncQueue.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SyncManager"


# instance fields
.field private final mOperationsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/SyncOperation;",
            ">;"
        }
    .end annotation
.end field

.field private mSyncStorageEngine:Landroid/content/SyncStorageEngine;


# direct methods
.method public constructor <init>(Landroid/content/SyncStorageEngine;)V
    .locals 11
    .parameter "syncStorageEngine"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Landroid/content/SyncQueue;->mOperationsMap:Ljava/util/HashMap;

    .line 44
    iput-object p1, p0, Landroid/content/SyncQueue;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    .line 45
    iget-object v1, p0, Landroid/content/SyncQueue;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    invoke-virtual {v1}, Landroid/content/SyncStorageEngine;->getPendingOperations()Ljava/util/ArrayList;

    move-result-object v10

    .line 47
    .local v10, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/SyncStorageEngine$PendingOperation;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 48
    .local v7, N:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v7, :cond_0

    .line 49
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/SyncStorageEngine$PendingOperation;

    .line 50
    .local v9, op:Landroid/content/SyncStorageEngine$PendingOperation;
    new-instance v0, Landroid/content/SyncOperation;

    iget-object v1, v9, Landroid/content/SyncStorageEngine$PendingOperation;->account:Landroid/accounts/Account;

    iget v2, v9, Landroid/content/SyncStorageEngine$PendingOperation;->syncSource:I

    iget-object v3, v9, Landroid/content/SyncStorageEngine$PendingOperation;->authority:Ljava/lang/String;

    iget-object v4, v9, Landroid/content/SyncStorageEngine$PendingOperation;->extras:Landroid/os/Bundle;

    const-wide/16 v5, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/content/SyncOperation;-><init>(Landroid/accounts/Account;ILjava/lang/String;Landroid/os/Bundle;J)V

    .line 52
    .local v0, syncOperation:Landroid/content/SyncOperation;
    iget-boolean v1, v9, Landroid/content/SyncStorageEngine$PendingOperation;->expedited:Z

    iput-boolean v1, v0, Landroid/content/SyncOperation;->expedited:Z

    .line 53
    iput-object v9, v0, Landroid/content/SyncOperation;->pendingOperation:Landroid/content/SyncStorageEngine$PendingOperation;

    .line 54
    invoke-direct {p0, v0, v9}, Landroid/content/SyncQueue;->add(Landroid/content/SyncOperation;Landroid/content/SyncStorageEngine$PendingOperation;)Z

    .line 48
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 56
    .end local v0           #syncOperation:Landroid/content/SyncOperation;
    .end local v9           #op:Landroid/content/SyncStorageEngine$PendingOperation;
    :cond_0
    return-void
.end method

.method private add(Landroid/content/SyncOperation;Landroid/content/SyncStorageEngine$PendingOperation;)Z
    .locals 12
    .parameter "operation"
    .parameter "pop"

    .prologue
    const/4 v11, 0x1

    .line 69
    iget-object v10, p1, Landroid/content/SyncOperation;->key:Ljava/lang/String;

    .line 70
    .local v10, operationKey:Ljava/lang/String;
    iget-object v0, p0, Landroid/content/SyncQueue;->mOperationsMap:Ljava/util/HashMap;

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/SyncOperation;

    .line 72
    .local v7, existingOperation:Landroid/content/SyncOperation;
    if-eqz v7, :cond_2

    .line 73
    const/4 v6, 0x0

    .line 74
    .local v6, changed:Z
    iget-boolean v0, v7, Landroid/content/SyncOperation;->expedited:Z

    iget-boolean v1, p1, Landroid/content/SyncOperation;->expedited:Z

    if-ne v0, v1, :cond_1

    .line 75
    iget-wide v0, v7, Landroid/content/SyncOperation;->earliestRunTime:J

    iget-wide v2, p1, Landroid/content/SyncOperation;->earliestRunTime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 77
    .local v8, newRunTime:J
    iget-wide v0, v7, Landroid/content/SyncOperation;->earliestRunTime:J

    cmp-long v0, v0, v8

    if-eqz v0, :cond_0

    .line 78
    iput-wide v8, v7, Landroid/content/SyncOperation;->earliestRunTime:J

    .line 79
    const/4 v6, 0x1

    .end local v8           #newRunTime:J
    :cond_0
    :goto_0
    move v0, v6

    .line 104
    .end local v6           #changed:Z
    :goto_1
    return v0

    .line 82
    .restart local v6       #changed:Z
    :cond_1
    iget-boolean v0, p1, Landroid/content/SyncOperation;->expedited:Z

    if-eqz v0, :cond_0

    .line 83
    iput-boolean v11, v7, Landroid/content/SyncOperation;->expedited:Z

    .line 84
    const/4 v6, 0x1

    goto :goto_0

    .line 90
    .end local v6           #changed:Z
    :cond_2
    iput-object p2, p1, Landroid/content/SyncOperation;->pendingOperation:Landroid/content/SyncStorageEngine$PendingOperation;

    .line 91
    iget-object v0, p1, Landroid/content/SyncOperation;->pendingOperation:Landroid/content/SyncStorageEngine$PendingOperation;

    if-nez v0, :cond_4

    .line 92
    new-instance p2, Landroid/content/SyncStorageEngine$PendingOperation;

    .end local p2
    iget-object v1, p1, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    iget v2, p1, Landroid/content/SyncOperation;->syncSource:I

    iget-object v3, p1, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/SyncOperation;->extras:Landroid/os/Bundle;

    iget-boolean v5, p1, Landroid/content/SyncOperation;->expedited:Z

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Landroid/content/SyncStorageEngine$PendingOperation;-><init>(Landroid/accounts/Account;ILjava/lang/String;Landroid/os/Bundle;Z)V

    .line 95
    .restart local p2
    iget-object v0, p0, Landroid/content/SyncQueue;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    invoke-virtual {v0, p2}, Landroid/content/SyncStorageEngine;->insertIntoPending(Landroid/content/SyncStorageEngine$PendingOperation;)Landroid/content/SyncStorageEngine$PendingOperation;

    move-result-object p2

    .line 96
    if-nez p2, :cond_3

    .line 97
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error adding pending sync operation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_3
    iput-object p2, p1, Landroid/content/SyncOperation;->pendingOperation:Landroid/content/SyncStorageEngine$PendingOperation;

    .line 103
    :cond_4
    iget-object v0, p0, Landroid/content/SyncQueue;->mOperationsMap:Ljava/util/HashMap;

    invoke-virtual {v0, v10, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v11

    .line 104
    goto :goto_1
.end method


# virtual methods
.method public add(Landroid/content/SyncOperation;)Z
    .locals 1
    .parameter "operation"

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/content/SyncQueue;->add(Landroid/content/SyncOperation;Landroid/content/SyncStorageEngine$PendingOperation;)Z

    move-result v0

    return v0
.end method

.method public dump(Ljava/lang/StringBuilder;)V
    .locals 4
    .parameter "sb"

    .prologue
    .line 203
    const-string v2, "SyncQueue: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/content/SyncQueue;->mOperationsMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " operation(s)\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    iget-object v2, p0, Landroid/content/SyncQueue;->mOperationsMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SyncOperation;

    .line 205
    .local v1, operation:Landroid/content/SyncOperation;
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 207
    .end local v1           #operation:Landroid/content/SyncOperation;
    :cond_0
    return-void
.end method

.method public nextOperation()Landroid/util/Pair;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Landroid/content/SyncOperation;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    const/4 v2, 0x0

    .line 132
    .local v2, best:Landroid/content/SyncOperation;
    const-wide/16 v3, 0x0

    .line 133
    .local v3, bestRunTime:J
    const/4 v5, 0x0

    .line 134
    .local v5, bestSyncableIsUnknownAndNotARetry:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncQueue;->mOperationsMap:Ljava/util/HashMap;

    move-object v13, v0

    invoke-virtual {v13}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/SyncOperation;

    .line 135
    .local v9, op:Landroid/content/SyncOperation;
    iget-wide v10, v9, Landroid/content/SyncOperation;->earliestRunTime:J

    .line 136
    .local v10, opRunTime:J
    iget-object v13, v9, Landroid/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v14, "ignore_backoff"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    if-nez v13, :cond_1

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncQueue;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    move-object v13, v0

    iget-object v14, v9, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    iget-object v15, v9, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    invoke-virtual {v13, v14, v15}, Landroid/content/SyncStorageEngine;->getBackoff(Landroid/accounts/Account;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    .line 138
    .local v1, backoff:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncQueue;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    move-object v13, v0

    iget-object v14, v9, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    iget-object v15, v9, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    invoke-virtual {v13, v14, v15}, Landroid/content/SyncStorageEngine;->getDelayUntilTime(Landroid/accounts/Account;Ljava/lang/String;)J

    move-result-wide v6

    .line 139
    .local v6, delayUntil:J
    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    if-eqz v1, :cond_3

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .end local v1           #backoff:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    :goto_1
    invoke-static/range {v13 .. v16}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 146
    .end local v6           #delayUntil:J
    :cond_1
    iget-object v13, v9, Landroid/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v14, "initialize"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    if-nez v13, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncQueue;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    move-object v13, v0

    iget-object v14, v9, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    iget-object v15, v9, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    invoke-virtual {v13, v14, v15}, Landroid/content/SyncStorageEngine;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v13

    if-gez v13, :cond_4

    const/4 v13, 0x1

    move v12, v13

    .line 152
    .local v12, syncableIsUnknownAndNotARetry:Z
    :goto_2
    if-eqz v2, :cond_2

    if-ne v5, v12, :cond_6

    iget-boolean v13, v2, Landroid/content/SyncOperation;->expedited:Z

    iget-boolean v14, v9, Landroid/content/SyncOperation;->expedited:Z

    if-ne v13, v14, :cond_5

    cmp-long v13, v10, v3

    if-gez v13, :cond_0

    .line 158
    :cond_2
    :goto_3
    move-object v2, v9

    .line 159
    move v5, v12

    .line 160
    move-wide v3, v10

    goto :goto_0

    .line 139
    .end local v12           #syncableIsUnknownAndNotARetry:Z
    .restart local v1       #backoff:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v6       #delayUntil:J
    :cond_3
    const-wide/16 v15, 0x0

    goto :goto_1

    .line 146
    .end local v1           #backoff:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v6           #delayUntil:J
    :cond_4
    const/4 v13, 0x0

    move v12, v13

    goto :goto_2

    .line 152
    .restart local v12       #syncableIsUnknownAndNotARetry:Z
    :cond_5
    iget-boolean v13, v9, Landroid/content/SyncOperation;->expedited:Z

    if-eqz v13, :cond_0

    goto :goto_3

    :cond_6
    if-eqz v12, :cond_0

    goto :goto_3

    .line 163
    .end local v9           #op:Landroid/content/SyncOperation;
    .end local v10           #opRunTime:J
    .end local v12           #syncableIsUnknownAndNotARetry:Z
    :cond_7
    if-nez v2, :cond_8

    .line 164
    const/4 v13, 0x0

    .line 166
    :goto_4
    return-object v13

    :cond_8
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-static {v2, v13}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v13

    goto :goto_4
.end method

.method public nextReadyToRun(J)Landroid/util/Pair;
    .locals 3
    .parameter "now"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/util/Pair",
            "<",
            "Landroid/content/SyncOperation;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    invoke-virtual {p0}, Landroid/content/SyncQueue;->nextOperation()Landroid/util/Pair;

    move-result-object v0

    .line 177
    .local v0, nextOpAndRunTime:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/content/SyncOperation;Ljava/lang/Long;>;"
    if-eqz v0, :cond_0

    iget-object p0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-lez v1, :cond_1

    .line 178
    :cond_0
    const/4 v1, 0x0

    .line 180
    :goto_0
    return-object v1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method public remove(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 6
    .parameter "account"
    .parameter "authority"

    .prologue
    .line 184
    iget-object v4, p0, Landroid/content/SyncQueue;->mOperationsMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 185
    .local v0, entries:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/SyncOperation;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 186
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 187
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/SyncOperation;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/SyncOperation;

    .line 188
    .local v3, syncOperation:Landroid/content/SyncOperation;
    if-eqz p1, :cond_1

    iget-object v4, v3, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    invoke-virtual {v4, p1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 191
    :cond_1
    if-eqz p2, :cond_2

    iget-object v4, v3, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 194
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 195
    iget-object v4, p0, Landroid/content/SyncQueue;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    iget-object v5, v3, Landroid/content/SyncOperation;->pendingOperation:Landroid/content/SyncStorageEngine$PendingOperation;

    invoke-virtual {v4, v5}, Landroid/content/SyncStorageEngine;->deleteFromPending(Landroid/content/SyncStorageEngine$PendingOperation;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 196
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unable to find pending row for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 197
    .local v2, errorMessage:Ljava/lang/String;
    const-string v4, "SyncManager"

    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 200
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/SyncOperation;>;"
    .end local v2           #errorMessage:Ljava/lang/String;
    .end local v3           #syncOperation:Landroid/content/SyncOperation;
    :cond_3
    return-void
.end method

.method public remove(Landroid/content/SyncOperation;)V
    .locals 4
    .parameter "operation"

    .prologue
    .line 112
    iget-object v2, p0, Landroid/content/SyncQueue;->mOperationsMap:Ljava/util/HashMap;

    iget-object v3, p1, Landroid/content/SyncOperation;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SyncOperation;

    .line 113
    .local v1, operationToRemove:Landroid/content/SyncOperation;
    if-nez v1, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    iget-object v2, p0, Landroid/content/SyncQueue;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    iget-object v3, v1, Landroid/content/SyncOperation;->pendingOperation:Landroid/content/SyncStorageEngine$PendingOperation;

    invoke-virtual {v2, v3}, Landroid/content/SyncStorageEngine;->deleteFromPending(Landroid/content/SyncStorageEngine$PendingOperation;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to find pending row for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, errorMessage:Ljava/lang/String;
    const-string v2, "SyncManager"

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
