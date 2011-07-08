.class public Landroid/database/sqlite/SQLiteStatement;
.super Landroid/database/sqlite/SQLiteProgram;
.source "SQLiteStatement.java"


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 0
    .parameter "db"
    .parameter "sql"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/database/sqlite/SQLiteProgram;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method private final native native_1x1_long()J
.end method

.method private final native native_1x1_string()Ljava/lang/String;
.end method

.method private final native native_execute()V
.end method


# virtual methods
.method public execute()V
    .locals 5

    .prologue
    .line 47
    iget-object v2, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 48
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "database "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " already closed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 50
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 51
    .local v0, timeStart:J
    iget-object v2, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->lock()V

    .line 53
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->acquireReference()V

    .line 55
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteStatement;->native_execute()V

    .line 56
    iget-object v2, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v3, p0, Landroid/database/sqlite/SQLiteStatement;->mSql:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->logTimeStat(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V

    .line 59
    iget-object v2, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 61
    return-void

    .line 58
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V

    .line 59
    iget-object v3, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 58
    throw v2
.end method

.method public executeInsert()J
    .locals 5

    .prologue
    .line 73
    iget-object v2, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 74
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "database "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " already closed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 76
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 77
    .local v0, timeStart:J
    iget-object v2, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->lock()V

    .line 79
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->acquireReference()V

    .line 81
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteStatement;->native_execute()V

    .line 82
    iget-object v2, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v3, p0, Landroid/database/sqlite/SQLiteStatement;->mSql:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->logTimeStat(Ljava/lang/String;J)V

    .line 83
    iget-object v2, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->lastChangeCount()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->lastInsertRow()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 85
    :goto_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V

    .line 86
    iget-object v4, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 83
    return-wide v2

    :cond_1
    const-wide/16 v2, -0x1

    goto :goto_0

    .line 85
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V

    .line 86
    iget-object v3, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 85
    throw v2
.end method

.method public simpleQueryForLong()J
    .locals 7

    .prologue
    .line 99
    iget-object v4, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-nez v4, :cond_0

    .line 100
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "database "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " already closed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 102
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 103
    .local v2, timeStart:J
    iget-object v4, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->lock()V

    .line 105
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->acquireReference()V

    .line 107
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteStatement;->native_1x1_long()J

    move-result-wide v0

    .line 108
    .local v0, retValue:J
    iget-object v4, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v5, p0, Landroid/database/sqlite/SQLiteStatement;->mSql:Ljava/lang/String;

    invoke-virtual {v4, v5, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->logTimeStat(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V

    .line 112
    iget-object v4, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 109
    return-wide v0

    .line 111
    .end local v0           #retValue:J
    :catchall_0
    move-exception v4

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V

    .line 112
    iget-object v5, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 111
    throw v4
.end method

.method public simpleQueryForString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 125
    iget-object v3, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-nez v3, :cond_0

    .line 126
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "database "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " already closed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 128
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 129
    .local v1, timeStart:J
    iget-object v3, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->lock()V

    .line 131
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->acquireReference()V

    .line 133
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteStatement;->native_1x1_string()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, retValue:Ljava/lang/String;
    iget-object v3, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v4, p0, Landroid/database/sqlite/SQLiteStatement;->mSql:Ljava/lang/String;

    invoke-virtual {v3, v4, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->logTimeStat(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V

    .line 138
    iget-object v3, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 135
    return-object v0

    .line 137
    .end local v0           #retValue:Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V

    .line 138
    iget-object v4, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 137
    throw v3
.end method
