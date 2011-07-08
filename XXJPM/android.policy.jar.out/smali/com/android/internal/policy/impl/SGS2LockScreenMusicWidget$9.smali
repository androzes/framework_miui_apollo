.class Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$9;
.super Ljava/lang/Object;
.source "SGS2LockScreenMusicWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 578
    iput-object p1, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$9;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const-string v4, "musicplayer.from"

    const-string v3, "lockscreen"

    .line 580
    iget-object v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$9;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-static {v1}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->access$500(Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;)V

    .line 581
    iget-object v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$9;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-static {v1}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->access$400(Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 582
    iget-object v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$9;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-static {v1}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->access$200(Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 583
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand.togglepause"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 584
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "musicplayer.from"

    const-string v1, "lockscreen"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 585
    iget-object v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$9;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->sendBroadcastAfterBooting(Landroid/view/View;Landroid/content/Intent;)V

    .line 591
    :goto_0
    return-void

    .line 587
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.music.musicservicecommand.togglepause"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 588
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "musicplayer.from"

    const-string v1, "lockscreen"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 589
    iget-object v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$9;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->sendBroadcastAfterBooting(Landroid/view/View;Landroid/content/Intent;)V

    goto :goto_0
.end method
