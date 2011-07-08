.class Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$6;
.super Ljava/lang/Object;
.source "SGS2LockScreenMusicWidget.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 428
    iput-object p1, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$6;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v7, "com.android.music.musicservicecommand.ff.up"

    const-string v4, "musicplayer.from"

    const-string v3, "lockscreen"

    .line 431
    iget-object v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$6;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-static {v1}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->access$400(Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 433
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x1020261

    if-ne v1, v2, :cond_0

    .line 434
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 487
    :cond_0
    :goto_0
    return v5

    .line 437
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$6;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-static {v1}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->access$1100(Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;)V

    .line 438
    iget-object v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$6;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-static {v1}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->access$1200(Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->playSoundEffect(I)V

    goto :goto_0

    .line 442
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 443
    iget-object v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$6;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-static {v1}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->access$1000(Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 444
    iget-object v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$6;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-static {v1, v5}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->access$1002(Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;Z)Z

    .line 445
    iget-object v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$6;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-static {v1}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->access$200(Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;)I

    move-result v1

    if-ne v1, v6, :cond_1

    .line 446
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand.ff.up"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 447
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "musicplayer.from"

    const-string v1, "lockscreen"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 448
    iget-object v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$6;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->sendBroadcastAfterBooting(Landroid/view/View;Landroid/content/Intent;)V

    goto :goto_0

    .line 450
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.music.musicservicecommand.ff.up"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 451
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "musicplayer.from"

    const-string v1, "lockscreen"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 452
    iget-object v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$6;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->sendBroadcastAfterBooting(Landroid/view/View;Landroid/content/Intent;)V

    goto :goto_0

    .line 460
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$6;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-static {v1}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->access$1300(Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;)V

    .line 461
    iget-object v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$6;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-static {v1}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->access$1000(Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 462
    iget-object v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$6;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-static {v1, v5}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->access$1002(Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;Z)Z

    .line 463
    iget-object v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$6;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-static {v1}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->access$200(Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;)I

    move-result v1

    if-ne v1, v6, :cond_2

    .line 464
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand.ff.up"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 465
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "musicplayer.from"

    const-string v1, "lockscreen"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 466
    iget-object v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$6;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->sendBroadcastAfterBooting(Landroid/view/View;Landroid/content/Intent;)V

    goto :goto_0

    .line 468
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.music.musicservicecommand.ff.up"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 469
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "musicplayer.from"

    const-string v1, "lockscreen"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 470
    iget-object v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$6;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->sendBroadcastAfterBooting(Landroid/view/View;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 474
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$6;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-static {v1}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->access$200(Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;)I

    move-result v1

    if-ne v1, v6, :cond_4

    .line 475
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand.next"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 476
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "musicplayer.from"

    const-string v1, "lockscreen"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 477
    iget-object v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$6;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->sendBroadcastAfterBooting(Landroid/view/View;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 479
    .end local v0           #intent:Landroid/content/Intent;
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.music.musicservicecommand.next"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 480
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "musicplayer.from"

    const-string v1, "lockscreen"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 481
    iget-object v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$6;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->sendBroadcastAfterBooting(Landroid/view/View;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 434
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
