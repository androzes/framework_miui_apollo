.class Lcom/android/internal/widget/DigitalClock$1;
.super Landroid/content/BroadcastReceiver;
.source "DigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/DigitalClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/DigitalClock;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/DigitalClock;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/internal/widget/DigitalClock$1;->this$0:Lcom/android/internal/widget/DigitalClock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/widget/DigitalClock$1;->this$0:Lcom/android/internal/widget/DigitalClock;

    invoke-static {v0}, Lcom/android/internal/widget/DigitalClock;->access$000(Lcom/android/internal/widget/DigitalClock;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/android/internal/widget/DigitalClock$1;->this$0:Lcom/android/internal/widget/DigitalClock;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/widget/DigitalClock;->access$102(Lcom/android/internal/widget/DigitalClock;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/DigitalClock$1;->this$0:Lcom/android/internal/widget/DigitalClock;

    invoke-static {v0}, Lcom/android/internal/widget/DigitalClock;->access$300(Lcom/android/internal/widget/DigitalClock;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/internal/widget/DigitalClock$1$1;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/DigitalClock$1$1;-><init>(Lcom/android/internal/widget/DigitalClock$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 70
    return-void
.end method
