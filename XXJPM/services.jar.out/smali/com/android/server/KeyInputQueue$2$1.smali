.class Lcom/android/server/KeyInputQueue$2$1;
.super Ljava/lang/Thread;
.source "KeyInputQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/KeyInputQueue$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/KeyInputQueue$2;


# direct methods
.method constructor <init>(Lcom/android/server/KeyInputQueue$2;)V
    .locals 0
    .parameter

    .prologue
    .line 636
    iput-object p1, p0, Lcom/android/server/KeyInputQueue$2$1;->this$1:Lcom/android/server/KeyInputQueue$2;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 637
    const-string v1, "KeyInputQueue"

    const-string v2, "ScreenCapture started. "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    const/4 v1, -0x8

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 639
    iget-object v1, p0, Lcom/android/server/KeyInputQueue$2$1;->this$1:Lcom/android/server/KeyInputQueue$2;

    iget-object v1, v1, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    invoke-static {v1}, Lcom/android/server/KeyInputQueue;->access$300(Lcom/android/server/KeyInputQueue;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x12c

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 640
    .local v0, startMsg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/KeyInputQueue$2$1;->this$1:Lcom/android/server/KeyInputQueue$2;

    iget-object v1, v1, Lcom/android/server/KeyInputQueue$2;->this$0:Lcom/android/server/KeyInputQueue;

    invoke-static {v1}, Lcom/android/server/KeyInputQueue;->access$300(Lcom/android/server/KeyInputQueue;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 641
    return-void
.end method
