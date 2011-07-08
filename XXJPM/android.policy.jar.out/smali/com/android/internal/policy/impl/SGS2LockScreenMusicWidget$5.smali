.class Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$5;
.super Ljava/lang/Object;
.source "SGS2LockScreenMusicWidget.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    .line 409
    iput-object p1, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$5;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    const-string v4, "musicplayer.from"

    const-string v3, "lockscreen"

    .line 412
    iget-object v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$5;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-static {v1}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->access$400(Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 414
    iget-object v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$5;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->access$1002(Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;Z)Z

    .line 415
    iget-object v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$5;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-static {v1}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->access$200(Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;)I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 416
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand.ff.down"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 417
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "musicplayer.from"

    const-string v1, "lockscreen"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 418
    iget-object v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$5;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->sendBroadcastAfterBooting(Landroid/view/View;Landroid/content/Intent;)V

    .line 424
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 420
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.music.musicservicecommand.ff.down"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 421
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "musicplayer.from"

    const-string v1, "lockscreen"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 422
    iget-object v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget$5;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->sendBroadcastAfterBooting(Landroid/view/View;Landroid/content/Intent;)V

    goto :goto_0
.end method
