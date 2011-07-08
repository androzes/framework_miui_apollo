.class public Lcom/android/internal/os/SamplingProfilerIntegration;
.super Ljava/lang/Object;
.source "SamplingProfilerIntegration.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SamplingProfilerIntegration"

.field static dirMade:Z

.field private static final enabled:Z

.field static volatile pending:Z

.field private static final snapshotWriter:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const-string v2, "SamplingProfilerIntegration"

    .line 41
    const-string v0, "1"

    const-string v1, "persist.sampling_profiler"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/os/SamplingProfilerIntegration;->enabled:Z

    .line 42
    sget-boolean v0, Lcom/android/internal/os/SamplingProfilerIntegration;->enabled:Z

    if-eqz v0, :cond_0

    .line 43
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/SamplingProfilerIntegration;->snapshotWriter:Ljava/util/concurrent/Executor;

    .line 44
    const-string v0, "SamplingProfilerIntegration"

    const-string v0, "Profiler is enabled."

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :goto_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/os/SamplingProfilerIntegration;->dirMade:Z

    return-void

    .line 46
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/os/SamplingProfilerIntegration;->snapshotWriter:Ljava/util/concurrent/Executor;

    .line 47
    const-string v0, "SamplingProfilerIntegration"

    const-string v0, "Profiler is disabled."

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-static {p0, p1}, Lcom/android/internal/os/SamplingProfilerIntegration;->writeSnapshot(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static isEnabled()Z
    .locals 1

    .prologue
    .line 55
    sget-boolean v0, Lcom/android/internal/os/SamplingProfilerIntegration;->enabled:Z

    return v0
.end method

.method public static start()V
    .locals 2

    .prologue
    .line 62
    sget-boolean v0, Lcom/android/internal/os/SamplingProfilerIntegration;->enabled:Z

    if-nez v0, :cond_0

    .line 64
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-static {}, Ldalvik/system/SamplingProfiler;->getInstance()Ldalvik/system/SamplingProfiler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ldalvik/system/SamplingProfiler;->start(I)V

    goto :goto_0
.end method

.method public static writeSnapshot(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 76
    sget-boolean v0, Lcom/android/internal/os/SamplingProfilerIntegration;->enabled:Z

    if-nez v0, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    sget-boolean v0, Lcom/android/internal/os/SamplingProfilerIntegration;->pending:Z

    if-nez v0, :cond_0

    .line 85
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/os/SamplingProfilerIntegration;->pending:Z

    .line 86
    sget-object v0, Lcom/android/internal/os/SamplingProfilerIntegration;->snapshotWriter:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/internal/os/SamplingProfilerIntegration$1;

    invoke-direct {v1, p0}, Lcom/android/internal/os/SamplingProfilerIntegration$1;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static writeSnapshot(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .parameter "dir"
    .parameter "name"

    .prologue
    const-string v12, "SamplingProfilerIntegration"

    .line 120
    invoke-static {}, Ldalvik/system/SamplingProfiler;->getInstance()Ldalvik/system/SamplingProfiler;

    move-result-object v9

    invoke-virtual {v9}, Ldalvik/system/SamplingProfiler;->snapshot()[B

    move-result-object v6

    .line 121
    .local v6, snapshot:[B
    if-nez v6, :cond_0

    .line 165
    :goto_0
    return-void

    .line 130
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 131
    .local v7, start:J
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x3a

    const/16 v11, 0x2e

    invoke-virtual {p1, v10, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".snapshot"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 136
    .local v5, path:Ljava/lang/String;
    const/4 v0, 0x0

    .line 139
    .local v0, count:I
    :goto_1
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    .local v4, out:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v4, v6}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long v2, v9, v7

    .line 160
    .local v2, elapsed:J
    const-string v9, "SamplingProfilerIntegration"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Wrote snapshot for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "ms."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 162
    .end local v2           #elapsed:J
    .end local v4           #out:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v9

    move-object v1, v9

    .line 163
    .local v1, e:Ljava/io/IOException;
    const-string v9, "SamplingProfilerIntegration"

    const-string v9, "Error writing snapshot."

    invoke-static {v12, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 141
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v9

    move-object v1, v9

    .line 142
    .local v1, e:Ljava/io/FileNotFoundException;
    add-int/lit8 v0, v0, 0x1

    const/4 v9, 0x3

    if-le v0, v9, :cond_1

    .line 143
    :try_start_3
    const-string v9, "SamplingProfilerIntegration"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not open "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 149
    :cond_1
    const-wide/16 v9, 0x9c4

    :try_start_4
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 150
    :catch_2
    move-exception v9

    goto :goto_1

    .line 157
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v9

    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    throw v9
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
.end method

.method public static writeZygoteSnapshot()V
    .locals 2

    .prologue
    .line 112
    sget-boolean v1, Lcom/android/internal/os/SamplingProfilerIntegration;->enabled:Z

    if-nez v1, :cond_0

    .line 117
    :goto_0
    return-void

    .line 114
    :cond_0
    const-string v0, "/data/zygote/snapshots"

    .line 115
    .local v0, dir:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 116
    const-string/jumbo v1, "zygote"

    invoke-static {v0, v1}, Lcom/android/internal/os/SamplingProfilerIntegration;->writeSnapshot(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
