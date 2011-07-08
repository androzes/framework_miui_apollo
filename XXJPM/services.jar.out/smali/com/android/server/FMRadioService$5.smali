.class Lcom/android/server/FMRadioService$5;
.super Ljava/lang/Object;
.source "FMRadioService.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/FMRadioService;


# direct methods
.method constructor <init>(Lcom/android/server/FMRadioService;)V
    .locals 0
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Lcom/android/server/FMRadioService$5;->this$0:Lcom/android/server/FMRadioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 5
    .parameter "focusChange"

    .prologue
    const/16 v3, 0xa

    const/4 v4, 0x0

    .line 214
    packed-switch p1, :pswitch_data_0

    .line 246
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 218
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/FMRadioService$5;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v1}, Lcom/android/server/FMRadioService;->isOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    iget-object v1, p0, Lcom/android/server/FMRadioService$5;->this$0:Lcom/android/server/FMRadioService;

    iget-object v2, p0, Lcom/android/server/FMRadioService$5;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v2}, Lcom/android/server/FMRadioService;->getCurrentChannel()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/server/FMRadioService;->access$902(Lcom/android/server/FMRadioService;J)J

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnAudioFocusChangeListener switch off mAudioFocusListener :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " stored freq:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/FMRadioService$5;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$900(Lcom/android/server/FMRadioService;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 221
    iget-object v1, p0, Lcom/android/server/FMRadioService$5;->this$0:Lcom/android/server/FMRadioService;

    const/4 v2, 0x1

    const/16 v3, 0xb

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/FMRadioService;->access$500(Lcom/android/server/FMRadioService;ZIZ)Z

    goto :goto_0

    .line 226
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/FMRadioService$5;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v1}, Lcom/android/server/FMRadioService;->isOn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 227
    iget-object v1, p0, Lcom/android/server/FMRadioService$5;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v1}, Lcom/android/server/FMRadioService;->on()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    const-string v1, "OnAudioFocusChangeListener switch on :"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 229
    iget-object v1, p0, Lcom/android/server/FMRadioService$5;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v1}, Lcom/android/server/FMRadioService;->access$200(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/FMRadioService$5;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$200(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioManager;->isRadioSpeakerOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRadioSpeakerOn(Z)V

    .line 230
    iget-object v1, p0, Lcom/android/server/FMRadioService$5;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v1}, Lcom/android/server/FMRadioService;->access$200(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/FMRadioService$5;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$200(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    invoke-virtual {v1, v3, v2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 235
    iget-object v1, p0, Lcom/android/server/FMRadioService$5;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v1}, Lcom/android/server/FMRadioService;->access$1000(Lcom/android/server/FMRadioService;)Lcom/android/server/FMPlayerNative;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/FMRadioService$5;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$900(Lcom/android/server/FMRadioService;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/FMPlayerNative;->tune(J)V

    .line 236
    iget-object v1, p0, Lcom/android/server/FMRadioService$5;->this$0:Lcom/android/server/FMRadioService;

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/android/server/FMRadioService$5;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v3}, Lcom/android/server/FMRadioService;->access$900(Lcom/android/server/FMRadioService;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 237
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.app.fm.auto.on"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 238
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "freq"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/FMRadioService$5;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v3}, Lcom/android/server/FMRadioService;->access$900(Lcom/android/server/FMRadioService;)J

    move-result-wide v3

    long-to-float v3, v3

    const/high16 v4, 0x447a

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    iget-object v1, p0, Lcom/android/server/FMRadioService$5;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v1}, Lcom/android/server/FMRadioService;->access$300(Lcom/android/server/FMRadioService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 240
    iget-object v1, p0, Lcom/android/server/FMRadioService$5;->this$0:Lcom/android/server/FMRadioService;

    const-wide/16 v2, -0x2

    invoke-static {v1, v2, v3}, Lcom/android/server/FMRadioService;->access$902(Lcom/android/server/FMRadioService;J)J

    goto/16 :goto_0

    .line 214
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
