.class Lcom/android/server/status/NotificationViewList;
.super Ljava/lang/Object;
.source "NotificationViewList.java"


# instance fields
.field private mLatest:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/status/StatusBarNotification;",
            ">;"
        }
    .end annotation
.end field

.field private mOngoing:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/status/StatusBarNotification;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/status/NotificationViewList;->mOngoing:Ljava/util/ArrayList;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/status/NotificationViewList;->mLatest:Ljava/util/ArrayList;

    .line 29
    return-void
.end method

.method private static final indexForKey(Ljava/util/ArrayList;Landroid/os/IBinder;)I
    .locals 3
    .parameter
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/status/StatusBarNotification;",
            ">;",
            "Landroid/os/IBinder;",
            ")I"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/status/StatusBarNotification;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 102
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 103
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/status/StatusBarNotification;

    iget-object v2, v2, Lcom/android/server/status/StatusBarNotification;->key:Landroid/os/IBinder;

    if-ne v2, p1, :cond_0

    move v2, v1

    .line 107
    :goto_1
    return v2

    .line 102
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 107
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method private static final indexInList(Ljava/util/ArrayList;Lcom/android/server/status/NotificationData;)I
    .locals 4
    .parameter
    .parameter "n"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/status/StatusBarNotification;",
            ">;",
            "Lcom/android/server/status/NotificationData;",
            ")I"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/status/StatusBarNotification;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 33
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 34
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/status/StatusBarNotification;

    .line 35
    .local v2, that:Lcom/android/server/status/StatusBarNotification;
    iget-object v3, v2, Lcom/android/server/status/StatusBarNotification;->data:Lcom/android/server/status/NotificationData;

    if-ne v3, p1, :cond_0

    move v3, v1

    .line 39
    .end local v2           #that:Lcom/android/server/status/StatusBarNotification;
    :goto_1
    return v3

    .line 33
    .restart local v2       #that:Lcom/android/server/status/StatusBarNotification;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 39
    .end local v2           #that:Lcom/android/server/status/StatusBarNotification;
    :cond_1
    const/4 v3, -0x1

    goto :goto_1
.end method

.method private final matchPackage(Lcom/android/server/status/StatusBarNotification;Ljava/lang/String;)Z
    .locals 2
    .parameter "snb"
    .parameter "packageName"

    .prologue
    const/4 v1, 0x1

    .line 90
    iget-object v0, p1, Lcom/android/server/status/StatusBarNotification;->data:Lcom/android/server/status/NotificationData;

    iget-object v0, v0, Lcom/android/server/status/NotificationData;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p1, Lcom/android/server/status/StatusBarNotification;->data:Lcom/android/server/status/NotificationData;

    iget-object v0, v0, Lcom/android/server/status/NotificationData;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 97
    :goto_0
    return v0

    .line 94
    :cond_0
    iget-object v0, p1, Lcom/android/server/status/StatusBarNotification;->data:Lcom/android/server/status/NotificationData;

    iget-object v0, v0, Lcom/android/server/status/NotificationData;->pkg:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/status/StatusBarNotification;->data:Lcom/android/server/status/NotificationData;

    iget-object v0, v0, Lcom/android/server/status/NotificationData;->pkg:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 95
    goto :goto_0

    .line 97
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method add(Lcom/android/server/status/StatusBarNotification;)V
    .locals 9
    .parameter "notification"

    .prologue
    .line 182
    iget-object v7, p1, Lcom/android/server/status/StatusBarNotification;->data:Lcom/android/server/status/NotificationData;

    iget-boolean v7, v7, Lcom/android/server/status/NotificationData;->ongoingEvent:Z

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/server/status/NotificationViewList;->mOngoing:Ljava/util/ArrayList;

    move-object v3, v7

    .line 183
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/status/StatusBarNotification;>;"
    :goto_0
    iget-object v7, p1, Lcom/android/server/status/StatusBarNotification;->data:Lcom/android/server/status/NotificationData;

    iget-wide v5, v7, Lcom/android/server/status/NotificationData;->when:J

    .line 184
    .local v5, when:J
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 185
    .local v0, N:I
    move v2, v0

    .line 186
    .local v2, index:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_0

    .line 187
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/status/StatusBarNotification;

    .line 188
    .local v4, that:Lcom/android/server/status/StatusBarNotification;
    iget-object v7, v4, Lcom/android/server/status/StatusBarNotification;->data:Lcom/android/server/status/NotificationData;

    iget-wide v7, v7, Lcom/android/server/status/NotificationData;->when:J

    cmp-long v7, v7, v5

    if-lez v7, :cond_2

    .line 189
    move v2, v1

    .line 193
    .end local v4           #that:Lcom/android/server/status/StatusBarNotification;
    :cond_0
    invoke-virtual {v3, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 199
    return-void

    .line 182
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #index:I
    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/status/StatusBarNotification;>;"
    .end local v5           #when:J
    :cond_1
    iget-object v7, p0, Lcom/android/server/status/NotificationViewList;->mLatest:Ljava/util/ArrayList;

    move-object v3, v7

    goto :goto_0

    .line 186
    .restart local v0       #N:I
    .restart local v1       #i:I
    .restart local v2       #index:I
    .restart local v3       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/status/StatusBarNotification;>;"
    .restart local v4       #that:Lcom/android/server/status/StatusBarNotification;
    .restart local v5       #when:J
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method clearViews()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 145
    iget-object v2, p0, Lcom/android/server/status/NotificationViewList;->mOngoing:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 146
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 147
    iget-object v2, p0, Lcom/android/server/status/NotificationViewList;->mOngoing:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/status/StatusBarNotification;

    iput-object v3, v2, Lcom/android/server/status/StatusBarNotification;->view:Landroid/view/View;

    .line 146
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 149
    :cond_0
    iget-object v2, p0, Lcom/android/server/status/NotificationViewList;->mLatest:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 150
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 151
    iget-object v2, p0, Lcom/android/server/status/NotificationViewList;->mLatest:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/status/StatusBarNotification;

    iput-object v3, v2, Lcom/android/server/status/StatusBarNotification;->view:Landroid/view/View;

    .line 150
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 153
    :cond_1
    return-void
.end method

.method dump(Lcom/android/server/status/StatusBarNotification;)V
    .locals 0
    .parameter "notification"

    .prologue
    .line 240
    return-void
.end method

.method get(Landroid/os/IBinder;)Lcom/android/server/status/StatusBarNotification;
    .locals 2
    .parameter "key"

    .prologue
    .line 112
    iget-object v1, p0, Lcom/android/server/status/NotificationViewList;->mOngoing:Ljava/util/ArrayList;

    invoke-static {v1, p1}, Lcom/android/server/status/NotificationViewList;->indexForKey(Ljava/util/ArrayList;Landroid/os/IBinder;)I

    move-result v0

    .line 113
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 114
    iget-object v1, p0, Lcom/android/server/status/NotificationViewList;->mOngoing:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/server/status/StatusBarNotification;

    move-object v1, p0

    .line 120
    :goto_0
    return-object v1

    .line 116
    .restart local p0
    :cond_0
    iget-object v1, p0, Lcom/android/server/status/NotificationViewList;->mLatest:Ljava/util/ArrayList;

    invoke-static {v1, p1}, Lcom/android/server/status/NotificationViewList;->indexForKey(Ljava/util/ArrayList;Landroid/os/IBinder;)I

    move-result v0

    .line 117
    if-ltz v0, :cond_1

    .line 118
    iget-object v1, p0, Lcom/android/server/status/NotificationViewList;->mLatest:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/server/status/StatusBarNotification;

    move-object v1, p0

    goto :goto_0

    .line 120
    .restart local p0
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method get(Landroid/view/View;)Lcom/android/server/status/StatusBarNotification;
    .locals 5
    .parameter "view"

    .prologue
    .line 243
    iget-object v4, p0, Lcom/android/server/status/NotificationViewList;->mOngoing:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 244
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 245
    iget-object v4, p0, Lcom/android/server/status/NotificationViewList;->mOngoing:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/status/StatusBarNotification;

    .line 246
    .local v2, notification:Lcom/android/server/status/StatusBarNotification;
    iget-object v3, v2, Lcom/android/server/status/StatusBarNotification;->view:Landroid/view/View;

    .line 247
    .local v3, v:Landroid/view/View;
    if-ne v3, p1, :cond_0

    move-object v4, v2

    .line 259
    .end local v2           #notification:Lcom/android/server/status/StatusBarNotification;
    .end local v3           #v:Landroid/view/View;
    :goto_1
    return-object v4

    .line 244
    .restart local v2       #notification:Lcom/android/server/status/StatusBarNotification;
    .restart local v3       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 251
    .end local v2           #notification:Lcom/android/server/status/StatusBarNotification;
    .end local v3           #v:Landroid/view/View;
    :cond_1
    iget-object v4, p0, Lcom/android/server/status/NotificationViewList;->mLatest:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 252
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_3

    .line 253
    iget-object v4, p0, Lcom/android/server/status/NotificationViewList;->mLatest:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/status/StatusBarNotification;

    .line 254
    .restart local v2       #notification:Lcom/android/server/status/StatusBarNotification;
    iget-object v3, v2, Lcom/android/server/status/StatusBarNotification;->view:Landroid/view/View;

    .line 255
    .restart local v3       #v:Landroid/view/View;
    if-ne v3, p1, :cond_2

    move-object v4, v2

    .line 256
    goto :goto_1

    .line 252
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 259
    .end local v2           #notification:Lcom/android/server/status/StatusBarNotification;
    .end local v3           #v:Landroid/view/View;
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method getExpandedIndex(Lcom/android/server/status/StatusBarNotification;)I
    .locals 8
    .parameter "notification"

    .prologue
    const-string v7, "StatusBar"

    .line 125
    iget-object v5, p1, Lcom/android/server/status/StatusBarNotification;->data:Lcom/android/server/status/NotificationData;

    iget-boolean v5, v5, Lcom/android/server/status/NotificationData;->ongoingEvent:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/status/NotificationViewList;->mOngoing:Ljava/util/ArrayList;

    move-object v4, v5

    .line 126
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/status/StatusBarNotification;>;"
    :goto_0
    iget-object v3, p1, Lcom/android/server/status/StatusBarNotification;->key:Landroid/os/IBinder;

    .line 127
    .local v3, key:Landroid/os/IBinder;
    const/4 v1, 0x0

    .line 129
    .local v1, index:I
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int v0, v5, v6

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_3

    .line 130
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/status/StatusBarNotification;

    .line 131
    .local v2, item:Lcom/android/server/status/StatusBarNotification;
    iget-object v5, v2, Lcom/android/server/status/StatusBarNotification;->key:Landroid/os/IBinder;

    if-ne v5, v3, :cond_1

    move v5, v1

    .line 141
    .end local v2           #item:Lcom/android/server/status/StatusBarNotification;
    :goto_2
    return v5

    .line 125
    .end local v0           #i:I
    .end local v1           #index:I
    .end local v3           #key:Landroid/os/IBinder;
    .end local v4           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/status/StatusBarNotification;>;"
    :cond_0
    iget-object v5, p0, Lcom/android/server/status/NotificationViewList;->mLatest:Ljava/util/ArrayList;

    move-object v4, v5

    goto :goto_0

    .line 134
    .restart local v0       #i:I
    .restart local v1       #index:I
    .restart local v2       #item:Lcom/android/server/status/StatusBarNotification;
    .restart local v3       #key:Landroid/os/IBinder;
    .restart local v4       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/status/StatusBarNotification;>;"
    :cond_1
    iget-object v5, v2, Lcom/android/server/status/StatusBarNotification;->view:Landroid/view/View;

    if-eqz v5, :cond_2

    .line 135
    add-int/lit8 v1, v1, 0x1

    .line 129
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 138
    .end local v2           #item:Lcom/android/server/status/StatusBarNotification;
    :cond_3
    const-string v5, "StatusBar"

    const-string v5, "Couldn\'t find notification in NotificationViewList."

    invoke-static {v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const-string v5, "StatusBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notification="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {p0, p1}, Lcom/android/server/status/NotificationViewList;->dump(Lcom/android/server/status/StatusBarNotification;)V

    .line 141
    const/4 v5, 0x0

    goto :goto_2
.end method

.method getIconIndex(Lcom/android/server/status/NotificationData;)I
    .locals 4
    .parameter "n"

    .prologue
    .line 43
    iget-object v3, p0, Lcom/android/server/status/NotificationViewList;->mOngoing:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 44
    .local v2, ongoingSize:I
    iget-object v3, p0, Lcom/android/server/status/NotificationViewList;->mLatest:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 45
    .local v1, latestSize:I
    iget-boolean v3, p1, Lcom/android/server/status/NotificationData;->ongoingEvent:Z

    if-eqz v3, :cond_1

    .line 46
    iget-object v3, p0, Lcom/android/server/status/NotificationViewList;->mOngoing:Ljava/util/ArrayList;

    invoke-static {v3, p1}, Lcom/android/server/status/NotificationViewList;->indexInList(Ljava/util/ArrayList;Lcom/android/server/status/NotificationData;)I

    move-result v0

    .line 47
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 48
    add-int v3, v1, v0

    add-int/lit8 v3, v3, 0x1

    .line 53
    .end local v0           #index:I
    :goto_0
    return v3

    .line 50
    .restart local v0       #index:I
    :cond_0
    const/4 v3, -0x1

    goto :goto_0

    .line 53
    .end local v0           #index:I
    :cond_1
    iget-object v3, p0, Lcom/android/server/status/NotificationViewList;->mLatest:Ljava/util/ArrayList;

    invoke-static {v3, p1}, Lcom/android/server/status/NotificationViewList;->indexInList(Ljava/util/ArrayList;Lcom/android/server/status/NotificationData;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method getLatest(I)Lcom/android/server/status/StatusBarNotification;
    .locals 1
    .parameter "index"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/server/status/NotificationViewList;->mLatest:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/server/status/StatusBarNotification;

    return-object p0
.end method

.method getOngoing(I)Lcom/android/server/status/StatusBarNotification;
    .locals 1
    .parameter "index"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/server/status/NotificationViewList;->mOngoing:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/server/status/StatusBarNotification;

    return-object p0
.end method

.method hasClearableItems()Z
    .locals 3

    .prologue
    .line 268
    iget-object v2, p0, Lcom/android/server/status/NotificationViewList;->mLatest:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 269
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 270
    iget-object v2, p0, Lcom/android/server/status/NotificationViewList;->mLatest:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/status/StatusBarNotification;

    iget-object v2, v2, Lcom/android/server/status/StatusBarNotification;->data:Lcom/android/server/status/NotificationData;

    iget-boolean v2, v2, Lcom/android/server/status/NotificationData;->clearable:Z

    if-eqz v2, :cond_0

    .line 271
    const/4 v2, 0x1

    .line 274
    :goto_1
    return v2

    .line 269
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 274
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method latestCount()I
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/server/status/NotificationViewList;->mLatest:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method notificationsForPackage(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/status/StatusBarNotification;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/status/StatusBarNotification;>;"
    iget-object v3, p0, Lcom/android/server/status/NotificationViewList;->mOngoing:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 75
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 76
    iget-object v3, p0, Lcom/android/server/status/NotificationViewList;->mOngoing:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/status/StatusBarNotification;

    invoke-direct {p0, v3, p1}, Lcom/android/server/status/NotificationViewList;->matchPackage(Lcom/android/server/status/StatusBarNotification;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 77
    iget-object v3, p0, Lcom/android/server/status/NotificationViewList;->mOngoing:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    :cond_1
    iget-object v3, p0, Lcom/android/server/status/NotificationViewList;->mLatest:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 81
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    .line 82
    iget-object v3, p0, Lcom/android/server/status/NotificationViewList;->mLatest:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/status/StatusBarNotification;

    invoke-direct {p0, v3, p1}, Lcom/android/server/status/NotificationViewList;->matchPackage(Lcom/android/server/status/StatusBarNotification;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 83
    iget-object v3, p0, Lcom/android/server/status/NotificationViewList;->mLatest:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 86
    :cond_3
    return-object v2
.end method

.method ongoingCount()I
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/server/status/NotificationViewList;->mOngoing:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method remove(Lcom/android/server/status/StatusBarNotification;)V
    .locals 3
    .parameter "notification"

    .prologue
    .line 58
    iget-object v1, p1, Lcom/android/server/status/StatusBarNotification;->data:Lcom/android/server/status/NotificationData;

    .line 60
    .local v1, n:Lcom/android/server/status/NotificationData;
    iget-object v2, p0, Lcom/android/server/status/NotificationViewList;->mOngoing:Ljava/util/ArrayList;

    invoke-static {v2, v1}, Lcom/android/server/status/NotificationViewList;->indexInList(Ljava/util/ArrayList;Lcom/android/server/status/NotificationData;)I

    move-result v0

    .line 61
    .local v0, index:I
    if-ltz v0, :cond_1

    .line 62
    iget-object v2, p0, Lcom/android/server/status/NotificationViewList;->mOngoing:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-object v2, p0, Lcom/android/server/status/NotificationViewList;->mLatest:Ljava/util/ArrayList;

    invoke-static {v2, v1}, Lcom/android/server/status/NotificationViewList;->indexInList(Ljava/util/ArrayList;Lcom/android/server/status/NotificationData;)I

    move-result v0

    .line 66
    if-ltz v0, :cond_0

    .line 67
    iget-object v2, p0, Lcom/android/server/status/NotificationViewList;->mLatest:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method size()I
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/server/status/NotificationViewList;->mOngoing:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/status/NotificationViewList;->mLatest:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method update(Lcom/android/server/status/StatusBarNotification;)V
    .locals 0
    .parameter "notification"

    .prologue
    .line 263
    invoke-virtual {p0, p1}, Lcom/android/server/status/NotificationViewList;->remove(Lcom/android/server/status/StatusBarNotification;)V

    .line 264
    invoke-virtual {p0, p1}, Lcom/android/server/status/NotificationViewList;->add(Lcom/android/server/status/StatusBarNotification;)V

    .line 265
    return-void
.end method
