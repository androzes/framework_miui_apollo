.class final Landroid/database/sqlite/SQLiteCursor$QueryThread;
.super Ljava/lang/Object;
.source "SQLiteCursor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QueryThread"
.end annotation


# instance fields
.field private final mThreadState:I

.field final synthetic this$0:Landroid/database/sqlite/SQLiteCursor;


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteCursor;I)V
    .locals 0
    .parameter
    .parameter "version"

    .prologue
    .line 114
    iput-object p1, p0, Landroid/database/sqlite/SQLiteCursor$QueryThread;->this$0:Landroid/database/sqlite/SQLiteCursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput p2, p0, Landroid/database/sqlite/SQLiteCursor$QueryThread;->mThreadState:I

    .line 116
    return-void
.end method

.method private sendMessage()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 118
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor$QueryThread;->this$0:Landroid/database/sqlite/SQLiteCursor;

    iget-object v0, v0, Landroid/database/sqlite/SQLiteCursor;->mNotificationHandler:Landroid/database/sqlite/SQLiteCursor$MainThreadNotificationHandler;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor$QueryThread;->this$0:Landroid/database/sqlite/SQLiteCursor;

    iget-object v0, v0, Landroid/database/sqlite/SQLiteCursor;->mNotificationHandler:Landroid/database/sqlite/SQLiteCursor$MainThreadNotificationHandler;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteCursor$MainThreadNotificationHandler;->sendEmptyMessage(I)Z

    .line 120
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor$QueryThread;->this$0:Landroid/database/sqlite/SQLiteCursor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/database/sqlite/SQLiteCursor;->access$002(Landroid/database/sqlite/SQLiteCursor;Z)Z

    .line 125
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor$QueryThread;->this$0:Landroid/database/sqlite/SQLiteCursor;

    invoke-static {v0, v1}, Landroid/database/sqlite/SQLiteCursor;->access$002(Landroid/database/sqlite/SQLiteCursor;Z)Z

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 128
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor$QueryThread;->this$0:Landroid/database/sqlite/SQLiteCursor;

    invoke-static {v3}, Landroid/database/sqlite/SQLiteCursor;->access$100(Landroid/database/sqlite/SQLiteCursor;)Landroid/database/CursorWindow;

    move-result-object v1

    .line 129
    .local v1, cw:Landroid/database/CursorWindow;
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Landroid/os/Process;->setThreadPriority(II)V

    .line 132
    :goto_0
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor$QueryThread;->this$0:Landroid/database/sqlite/SQLiteCursor;

    invoke-static {v3}, Landroid/database/sqlite/SQLiteCursor;->access$200(Landroid/database/sqlite/SQLiteCursor;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 133
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor$QueryThread;->this$0:Landroid/database/sqlite/SQLiteCursor;

    invoke-static {v3}, Landroid/database/sqlite/SQLiteCursor;->access$300(Landroid/database/sqlite/SQLiteCursor;)I

    move-result v3

    iget v4, p0, Landroid/database/sqlite/SQLiteCursor$QueryThread;->mThreadState:I

    if-eq v3, v4, :cond_0

    .line 134
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor$QueryThread;->this$0:Landroid/database/sqlite/SQLiteCursor;

    invoke-static {v3}, Landroid/database/sqlite/SQLiteCursor;->access$200(Landroid/database/sqlite/SQLiteCursor;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 159
    :goto_1
    return-void

    .line 138
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor$QueryThread;->this$0:Landroid/database/sqlite/SQLiteCursor;

    invoke-static {v3}, Landroid/database/sqlite/SQLiteCursor;->access$600(Landroid/database/sqlite/SQLiteCursor;)Landroid/database/sqlite/SQLiteQuery;

    move-result-object v3

    iget-object v4, p0, Landroid/database/sqlite/SQLiteCursor$QueryThread;->this$0:Landroid/database/sqlite/SQLiteCursor;

    invoke-static {v4}, Landroid/database/sqlite/SQLiteCursor;->access$400(Landroid/database/sqlite/SQLiteCursor;)I

    move-result v4

    iget-object v5, p0, Landroid/database/sqlite/SQLiteCursor$QueryThread;->this$0:Landroid/database/sqlite/SQLiteCursor;

    invoke-static {v5}, Landroid/database/sqlite/SQLiteCursor;->access$500(Landroid/database/sqlite/SQLiteCursor;)I

    move-result v5

    invoke-virtual {v3, v1, v4, v5}, Landroid/database/sqlite/SQLiteQuery;->fillWindow(Landroid/database/CursorWindow;II)I

    move-result v0

    .line 140
    .local v0, count:I
    if-eqz v0, :cond_2

    .line 141
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 142
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor$QueryThread;->this$0:Landroid/database/sqlite/SQLiteCursor;

    iget-object v4, p0, Landroid/database/sqlite/SQLiteCursor$QueryThread;->this$0:Landroid/database/sqlite/SQLiteCursor;

    invoke-static {v4}, Landroid/database/sqlite/SQLiteCursor;->access$400(Landroid/database/sqlite/SQLiteCursor;)I

    move-result v4

    invoke-static {v3, v4}, Landroid/database/sqlite/SQLiteCursor;->access$512(Landroid/database/sqlite/SQLiteCursor;I)I

    .line 143
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteCursor$QueryThread;->sendMessage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor$QueryThread;->this$0:Landroid/database/sqlite/SQLiteCursor;

    invoke-static {v3}, Landroid/database/sqlite/SQLiteCursor;->access$200(Landroid/database/sqlite/SQLiteCursor;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 145
    :cond_1
    :try_start_1
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor$QueryThread;->this$0:Landroid/database/sqlite/SQLiteCursor;

    invoke-static {v3, v0}, Landroid/database/sqlite/SQLiteCursor;->access$502(Landroid/database/sqlite/SQLiteCursor;I)I

    .line 146
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteCursor$QueryThread;->sendMessage()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 156
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor$QueryThread;->this$0:Landroid/database/sqlite/SQLiteCursor;

    invoke-static {v3}, Landroid/database/sqlite/SQLiteCursor;->access$200(Landroid/database/sqlite/SQLiteCursor;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v3

    .end local v0           #count:I
    :goto_2
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    .line 152
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 156
    .local v2, e:Ljava/lang/Exception;
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor$QueryThread;->this$0:Landroid/database/sqlite/SQLiteCursor;

    invoke-static {v3}, Landroid/database/sqlite/SQLiteCursor;->access$200(Landroid/database/sqlite/SQLiteCursor;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v3

    goto :goto_2

    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Landroid/database/sqlite/SQLiteCursor$QueryThread;->this$0:Landroid/database/sqlite/SQLiteCursor;

    invoke-static {v4}, Landroid/database/sqlite/SQLiteCursor;->access$200(Landroid/database/sqlite/SQLiteCursor;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    .restart local v0       #count:I
    :cond_2
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor$QueryThread;->this$0:Landroid/database/sqlite/SQLiteCursor;

    invoke-static {v3}, Landroid/database/sqlite/SQLiteCursor;->access$200(Landroid/database/sqlite/SQLiteCursor;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v3

    goto :goto_2
.end method
