.class public abstract Landroid/database/sqlite/SQLiteOpenHelper;
.super Ljava/lang/Object;
.source "SQLiteOpenHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private final mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

.field private mIsInitializing:Z

.field private final mName:Ljava/lang/String;

.field private final mNewVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/database/sqlite/SQLiteOpenHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 3
    .parameter "context"
    .parameter "name"
    .parameter "factory"
    .parameter "version"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mIsInitializing:Z

    .line 55
    const/4 v0, 0x1

    if-ge p4, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Version must be >= 1, was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    iput-object p1, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mName:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .line 60
    iput p4, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mNewVersion:I

    .line 61
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    .prologue
    .line 188
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mIsInitializing:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Closed during initialization"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 190
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 192
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 6

    .prologue
    .line 149
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 150
    iget-object v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v3

    .line 153
    :cond_1
    :try_start_1
    iget-boolean v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mIsInitializing:Z

    if-eqz v3, :cond_2

    .line 154
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "getReadableDatabase called recursively"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 158
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v3

    goto :goto_0

    .line 159
    :catch_0
    move-exception v1

    .line 160
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    :try_start_3
    iget-object v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mName:Ljava/lang/String;

    if-nez v3, :cond_3

    throw v1

    .line 161
    :cond_3
    sget-object v3, Landroid/database/sqlite/SQLiteOpenHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t open "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for writing (will try read-only):"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 164
    const/4 v0, 0x0

    .line 166
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x1

    :try_start_4
    iput-boolean v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mIsInitializing:Z

    .line 167
    iget-object v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 168
    .local v2, path:Ljava/lang/String;
    iget-object v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 169
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v3

    iget v4, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mNewVersion:I

    if-eq v3, v4, :cond_5

    .line 170
    new-instance v3, Landroid/database/sqlite/SQLiteException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t upgrade read-only database from version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mNewVersion:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 179
    .end local v2           #path:Ljava/lang/String;
    :catchall_1
    move-exception v3

    const/4 v4, 0x0

    :try_start_5
    iput-boolean v4, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mIsInitializing:Z

    .line 180
    if-eqz v0, :cond_4

    iget-object v4, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eq v0, v4, :cond_4

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 179
    :cond_4
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 174
    .restart local v2       #path:Ljava/lang/String;
    :cond_5
    :try_start_6
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 175
    sget-object v3, Landroid/database/sqlite/SQLiteOpenHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Opened "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in read-only mode"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iput-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 177
    iget-object v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 179
    const/4 v4, 0x0

    :try_start_7
    iput-boolean v4, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mIsInitializing:Z

    .line 180
    if-eqz v0, :cond_0

    iget-object v4, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eq v0, v4, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 7

    .prologue
    .line 76
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v3

    if-nez v3, :cond_0

    .line 77
    iget-object v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    :goto_0
    monitor-exit p0

    return-object v3

    .line 80
    :cond_0
    :try_start_1
    iget-boolean v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mIsInitializing:Z

    if-eqz v3, :cond_1

    .line 81
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "getWritableDatabase called recursively"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 90
    :cond_1
    const/4 v1, 0x0

    .line 91
    .local v1, success:Z
    const/4 v0, 0x0

    .line 92
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_2
    iget-object v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->lock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    :cond_2
    const/4 v3, 0x1

    :try_start_3
    iput-boolean v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mIsInitializing:Z

    .line 95
    iget-object v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mName:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 96
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/database/sqlite/SQLiteDatabase;->create(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 101
    :goto_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v2

    .line 102
    .local v2, version:I
    iget v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mNewVersion:I

    if-eq v2, v3, :cond_3

    .line 103
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 105
    if-nez v2, :cond_7

    .line 106
    :try_start_4
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 110
    :goto_2
    iget v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mNewVersion:I

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 111
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 113
    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 117
    :cond_3
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 118
    const/4 v1, 0x1

    .line 121
    const/4 v3, 0x0

    :try_start_6
    iput-boolean v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mIsInitializing:Z

    .line 122
    if-eqz v1, :cond_c

    .line 123
    iget-object v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v3, :cond_4

    .line 124
    :try_start_7
    iget-object v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 125
    :goto_3
    :try_start_8
    iget-object v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 127
    :cond_4
    iput-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_5
    :goto_4
    move-object v3, v0

    .line 119
    goto :goto_0

    .line 98
    .end local v2           #version:I
    :cond_6
    :try_start_9
    iget-object v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mName:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-result-object v0

    goto :goto_1

    .line 108
    .restart local v2       #version:I
    :cond_7
    :try_start_a
    iget v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mNewVersion:I

    invoke-virtual {p0, v0, v2, v3}, Landroid/database/sqlite/SQLiteOpenHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_2

    .line 113
    :catchall_1
    move-exception v3

    :try_start_b
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 121
    .end local v2           #version:I
    :catchall_2
    move-exception v3

    const/4 v4, 0x0

    :try_start_c
    iput-boolean v4, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mIsInitializing:Z

    .line 122
    if-eqz v1, :cond_a

    .line 123
    iget-object v4, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz v4, :cond_8

    .line 124
    :try_start_d
    iget-object v4, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    .line 125
    :goto_5
    :try_start_e
    iget-object v4, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 127
    :cond_8
    iput-object v0, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 121
    :cond_9
    :goto_6
    throw v3

    .line 129
    :cond_a
    iget-object v4, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v4, :cond_b

    iget-object v4, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 130
    :cond_b
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_6

    .line 129
    .restart local v2       #version:I
    :cond_c
    iget-object v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v3, :cond_d

    iget-object v3, p0, Landroid/database/sqlite/SQLiteOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 130
    :cond_d
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_4

    .line 124
    :catch_0
    move-exception v3

    goto :goto_3

    .end local v2           #version:I
    :catch_1
    move-exception v4

    goto :goto_5
.end method

.method public abstract onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 228
    return-void
.end method

.method public abstract onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
.end method
