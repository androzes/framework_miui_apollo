.class Lcom/android/server/ViewServer;
.super Ljava/lang/Object;
.source "ViewServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final COMMAND_PROTOCOL_VERSION:Ljava/lang/String; = "PROTOCOL"

.field private static final COMMAND_SERVER_VERSION:Ljava/lang/String; = "SERVER"

.field private static final COMMAND_WINDOW_MANAGER_LIST:Ljava/lang/String; = "LIST"

.field private static final LOG_TAG:Ljava/lang/String; = "ViewServer"

.field private static final VALUE_PROTOCOL_VERSION:Ljava/lang/String; = "2"

.field private static final VALUE_SERVER_VERSION:Ljava/lang/String; = "3"

.field public static final VIEW_SERVER_DEFAULT_PORT:I = 0x134b


# instance fields
.field private final mPort:I

.field private mServer:Ljava/net/ServerSocket;

.field private mThread:Ljava/lang/Thread;

.field private final mWindowManager:Lcom/android/server/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/WindowManagerService;)V
    .locals 1
    .parameter "windowManager"

    .prologue
    .line 74
    const/16 v0, 0x134b

    invoke-direct {p0, p1, v0}, Lcom/android/server/ViewServer;-><init>(Lcom/android/server/WindowManagerService;I)V

    .line 75
    return-void
.end method

.method constructor <init>(Lcom/android/server/WindowManagerService;I)V
    .locals 0
    .parameter "windowManager"
    .parameter "port"

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/android/server/ViewServer;->mWindowManager:Lcom/android/server/WindowManagerService;

    .line 88
    iput p2, p0, Lcom/android/server/ViewServer;->mPort:I

    .line 89
    return-void
.end method

.method private static writeValue(Ljava/net/Socket;Ljava/lang/String;)Z
    .locals 8
    .parameter "client"
    .parameter "value"

    .prologue
    const/4 v7, 0x0

    .line 217
    const/4 v2, 0x0

    .line 219
    .local v2, out:Ljava/io/BufferedWriter;
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 220
    .local v0, clientStream:Ljava/io/OutputStream;
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    invoke-direct {v5, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v6, 0x2000

    invoke-direct {v3, v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    .end local v2           #out:Ljava/io/BufferedWriter;
    .local v3, out:Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {v3, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 222
    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 223
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 224
    const/4 v4, 0x1

    .line 228
    .local v4, result:Z
    if-eqz v3, :cond_1

    .line 230
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move v5, v4

    :goto_0
    move-object v2, v3

    .line 236
    .end local v0           #clientStream:Ljava/io/OutputStream;
    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    :goto_1
    return v5

    .line 225
    .end local v4           #result:Z
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 226
    .local v1, e:Ljava/lang/Exception;
    :goto_2
    const/4 v4, 0x0

    .line 228
    .restart local v4       #result:Z
    if-eqz v2, :cond_2

    .line 230
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move v5, v4

    .line 233
    goto :goto_1

    .line 228
    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #result:Z
    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v2, :cond_0

    .line 230
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 228
    :cond_0
    :goto_4
    throw v5

    .line 231
    .restart local v1       #e:Ljava/lang/Exception;
    .restart local v4       #result:Z
    :catch_1
    move-exception v1

    .local v1, e:Ljava/io/IOException;
    move v5, v7

    .line 232
    goto :goto_1

    .line 231
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #result:Z
    :catch_2
    move-exception v1

    .line 232
    .restart local v1       #e:Ljava/io/IOException;
    goto :goto_4

    .line 231
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v0       #clientStream:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    .restart local v4       #result:Z
    :catch_3
    move-exception v1

    .restart local v1       #e:Ljava/io/IOException;
    move v5, v7

    .line 232
    goto :goto_0

    .line 228
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #result:Z
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    goto :goto_3

    .line 225
    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    :catch_4
    move-exception v5

    move-object v1, v5

    move-object v2, v3

    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    goto :goto_2

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    .restart local v4       #result:Z
    :cond_1
    move v5, v4

    goto :goto_0

    .end local v0           #clientStream:Ljava/io/OutputStream;
    .end local v3           #out:Ljava/io/BufferedWriter;
    .local v1, e:Ljava/lang/Exception;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    :cond_2
    move v5, v4

    goto :goto_1
.end method


# virtual methods
.method isRunning()Z
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/server/ViewServer;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ViewServer;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 13

    .prologue
    const-string v10, "ViewServer"

    .line 155
    iget-object v9, p0, Lcom/android/server/ViewServer;->mServer:Ljava/net/ServerSocket;

    .line 157
    .local v9, server:Ljava/net/ServerSocket;
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/ViewServer;->mThread:Ljava/lang/Thread;

    if-ne v10, v11, :cond_9

    .line 158
    const/4 v0, 0x0

    .line 161
    .local v0, client:Ljava/net/Socket;
    :try_start_0
    invoke-virtual {v9}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 163
    const/4 v3, 0x0

    .line 165
    .local v3, in:Ljava/io/BufferedReader;
    :try_start_1
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v11, 0x400

    invoke-direct {v4, v10, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    .end local v3           #in:Ljava/io/BufferedReader;
    .local v4, in:Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 172
    .local v7, request:Ljava/lang/String;
    const/16 v10, 0x20

    invoke-virtual {v7, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 173
    .local v5, index:I
    const/4 v10, -0x1

    if-ne v5, v10, :cond_3

    .line 174
    move-object v1, v7

    .line 175
    .local v1, command:Ljava/lang/String;
    const-string v6, ""

    .line 182
    .local v6, parameters:Ljava/lang/String;
    :goto_1
    const-string v10, "PROTOCOL"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 183
    const-string v10, "2"

    invoke-static {v0, v10}, Lcom/android/server/ViewServer;->writeValue(Ljava/net/Socket;Ljava/lang/String;)Z

    move-result v8

    .line 193
    .local v8, result:Z
    :goto_2
    if-nez v8, :cond_1

    .line 194
    const-string v10, "ViewServer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "An error occured with the command: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 197
    :cond_1
    if-eqz v4, :cond_2

    .line 198
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 204
    :cond_2
    if-eqz v0, :cond_0

    .line 206
    :try_start_4
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 207
    :catch_0
    move-exception v2

    .line 208
    .end local v1           #command:Ljava/lang/String;
    .end local v4           #in:Ljava/io/BufferedReader;
    .end local v5           #index:I
    .end local v6           #parameters:Ljava/lang/String;
    .end local v7           #request:Ljava/lang/String;
    .end local v8           #result:Z
    .local v2, e:Ljava/io/IOException;
    :goto_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 177
    .end local v2           #e:Ljava/io/IOException;
    .restart local v4       #in:Ljava/io/BufferedReader;
    .restart local v5       #index:I
    .restart local v7       #request:Ljava/lang/String;
    :cond_3
    const/4 v10, 0x0

    :try_start_5
    invoke-virtual {v7, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 178
    .restart local v1       #command:Ljava/lang/String;
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #parameters:Ljava/lang/String;
    goto :goto_1

    .line 184
    :cond_4
    const-string v10, "SERVER"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 185
    const-string v10, "3"

    invoke-static {v0, v10}, Lcom/android/server/ViewServer;->writeValue(Ljava/net/Socket;Ljava/lang/String;)Z

    move-result v8

    .restart local v8       #result:Z
    goto :goto_2

    .line 186
    .end local v8           #result:Z
    :cond_5
    const-string v10, "LIST"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 187
    iget-object v10, p0, Lcom/android/server/ViewServer;->mWindowManager:Lcom/android/server/WindowManagerService;

    invoke-virtual {v10, v0}, Lcom/android/server/WindowManagerService;->viewServerListWindows(Ljava/net/Socket;)Z

    move-result v8

    .restart local v8       #result:Z
    goto :goto_2

    .line 189
    .end local v8           #result:Z
    :cond_6
    iget-object v10, p0, Lcom/android/server/ViewServer;->mWindowManager:Lcom/android/server/WindowManagerService;

    invoke-virtual {v10, v0, v1, v6}, Lcom/android/server/WindowManagerService;->viewServerWindowCommand(Ljava/net/Socket;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result v8

    .restart local v8       #result:Z
    goto :goto_2

    .line 197
    .end local v1           #command:Ljava/lang/String;
    .end local v4           #in:Ljava/io/BufferedReader;
    .end local v5           #index:I
    .end local v6           #parameters:Ljava/lang/String;
    .end local v7           #request:Ljava/lang/String;
    .end local v8           #result:Z
    .restart local v3       #in:Ljava/io/BufferedReader;
    :catchall_0
    move-exception v10

    :goto_4
    if-eqz v3, :cond_7

    .line 198
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 197
    :cond_7
    throw v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 201
    .end local v3           #in:Ljava/io/BufferedReader;
    :catch_1
    move-exception v10

    move-object v2, v10

    .line 202
    .local v2, e:Ljava/lang/Exception;
    :try_start_7
    const-string v10, "ViewServer"

    const-string v11, "Connection error: "

    invoke-static {v10, v11, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 204
    if-eqz v0, :cond_0

    .line 206
    :try_start_8
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_0

    .line 207
    :catch_2
    move-exception v2

    goto :goto_3

    .line 204
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v10

    if-eqz v0, :cond_8

    .line 206
    :try_start_9
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 204
    :cond_8
    :goto_5
    throw v10

    .line 213
    .end local v0           #client:Ljava/net/Socket;
    :cond_9
    return-void

    .line 207
    .restart local v0       #client:Ljava/net/Socket;
    :catch_3
    move-exception v2

    .line 208
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 197
    .end local v2           #e:Ljava/io/IOException;
    .restart local v4       #in:Ljava/io/BufferedReader;
    :catchall_2
    move-exception v10

    move-object v3, v4

    .end local v4           #in:Ljava/io/BufferedReader;
    .restart local v3       #in:Ljava/io/BufferedReader;
    goto :goto_4
.end method

.method start()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 102
    iget-object v0, p0, Lcom/android/server/ViewServer;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 103
    const/4 v0, 0x0

    .line 110
    :goto_0
    return v0

    .line 106
    :cond_0
    new-instance v0, Ljava/net/ServerSocket;

    iget v1, p0, Lcom/android/server/ViewServer;->mPort:I

    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    iput-object v0, p0, Lcom/android/server/ViewServer;->mServer:Ljava/net/ServerSocket;

    .line 107
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote View Server [port="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ViewServer;->mPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/ViewServer;->mThread:Ljava/lang/Thread;

    .line 108
    iget-object v0, p0, Lcom/android/server/ViewServer;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    move v0, v3

    .line 110
    goto :goto_0
.end method

.method stop()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 124
    iget-object v1, p0, Lcom/android/server/ViewServer;->mThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/android/server/ViewServer;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 126
    iput-object v2, p0, Lcom/android/server/ViewServer;->mThread:Ljava/lang/Thread;

    .line 128
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ViewServer;->mServer:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V

    .line 129
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/ViewServer;->mServer:Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    const/4 v1, 0x1

    .line 135
    :goto_0
    return v1

    .line 131
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 132
    .local v0, e:Ljava/io/IOException;
    const-string v1, "ViewServer"

    const-string v2, "Could not close the view server"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
