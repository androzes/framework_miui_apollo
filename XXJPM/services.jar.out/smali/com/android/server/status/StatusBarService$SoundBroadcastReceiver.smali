.class Lcom/android/server/status/StatusBarService$SoundBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StatusBarService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/status/StatusBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SoundBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/status/StatusBarService;


# direct methods
.method public constructor <init>(Lcom/android/server/status/StatusBarService;)V
    .locals 0
    .parameter

    .prologue
    .line 3382
    iput-object p1, p0, Lcom/android/server/status/StatusBarService$SoundBroadcastReceiver;->this$0:Lcom/android/server/status/StatusBarService;

    .line 3383
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 3384
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 3387
    iget-object v0, p0, Lcom/android/server/status/StatusBarService$SoundBroadcastReceiver;->this$0:Lcom/android/server/status/StatusBarService;

    const-string v1, "android.media.EXTRA_RINGER_MODE"

    const/4 v2, 0x2

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/server/status/StatusBarService;->mSoundProfile:I

    .line 3389
    iget-object v0, p0, Lcom/android/server/status/StatusBarService$SoundBroadcastReceiver;->this$0:Lcom/android/server/status/StatusBarService;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/android/server/status/StatusBarService;->access$2000(Lcom/android/server/status/StatusBarService;I)V

    .line 3391
    return-void
.end method
