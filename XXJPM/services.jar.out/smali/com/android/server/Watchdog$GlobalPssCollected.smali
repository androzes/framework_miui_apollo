.class final Lcom/android/server/Watchdog$GlobalPssCollected;
.super Ljava/lang/Object;
.source "Watchdog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/Watchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "GlobalPssCollected"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/Watchdog;


# direct methods
.method constructor <init>(Lcom/android/server/Watchdog;)V
    .locals 0
    .parameter

    .prologue
    .line 333
    iput-object p1, p0, Lcom/android/server/Watchdog$GlobalPssCollected;->this$0:Lcom/android/server/Watchdog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/server/Watchdog$GlobalPssCollected;->this$0:Lcom/android/server/Watchdog;

    iget-object v0, v0, Lcom/android/server/Watchdog;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa9f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 336
    return-void
.end method
