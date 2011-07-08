.class Lcom/android/server/status/StatusBarService$35;
.super Ljava/lang/Object;
.source "StatusBarService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/status/StatusBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/status/StatusBarService;


# direct methods
.method constructor <init>(Lcom/android/server/status/StatusBarService;)V
    .locals 0
    .parameter

    .prologue
    .line 3732
    iput-object p1, p0, Lcom/android/server/status/StatusBarService$35;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    .line 3733
    const/4 v1, 0x2

    .line 3734
    .local v1, soundProfile:I
    iget-object v3, p0, Lcom/android/server/status/StatusBarService$35;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v3, v3, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 3736
    .local v0, audioManager:Landroid/media/AudioManager;
    iget-object v3, p0, Lcom/android/server/status/StatusBarService$35;->this$0:Lcom/android/server/status/StatusBarService;

    iget v3, v3, Lcom/android/server/status/StatusBarService;->mSoundProfile:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 3737
    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v2

    .line 3739
    .local v2, vibrateProfile:I
    packed-switch v2, :pswitch_data_0

    .line 3758
    :goto_0
    iget-object v3, p0, Lcom/android/server/status/StatusBarService$35;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v3, v3, Lcom/android/server/status/StatusBarService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "driving_mode_on"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3761
    .end local v2           #vibrateProfile:I
    :cond_0
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 3762
    return-void

    .line 3741
    .restart local v2       #vibrateProfile:I
    :pswitch_0
    const/4 v1, 0x0

    .line 3742
    goto :goto_0

    .line 3745
    :pswitch_1
    iget-object v3, p0, Lcom/android/server/status/StatusBarService$35;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v3, v3, Lcom/android/server/status/StatusBarService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "vibrate_in_silent"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 3746
    const/4 v1, 0x1

    goto :goto_0

    .line 3748
    :cond_1
    const/4 v1, 0x0

    .line 3750
    goto :goto_0

    .line 3753
    :pswitch_2
    const/4 v1, 0x1

    goto :goto_0

    .line 3739
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
