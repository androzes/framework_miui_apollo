.class Lcom/android/internal/policy/impl/RotaryLockScreen$5;
.super Ljava/lang/Object;
.source "RotaryLockScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/RotaryLockScreen;-><init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/RotaryLockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/RotaryLockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 231
    iput-object p1, p0, Lcom/android/internal/policy/impl/RotaryLockScreen$5;->this$0:Lcom/android/internal/policy/impl/RotaryLockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 233
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen$5;->this$0:Lcom/android/internal/policy/impl/RotaryLockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/RotaryLockScreen;->access$000(Lcom/android/internal/policy/impl/RotaryLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 234
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen$5;->this$0:Lcom/android/internal/policy/impl/RotaryLockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/RotaryLockScreen;->access$100(Lcom/android/internal/policy/impl/RotaryLockScreen;)V

    .line 235
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen$5;->this$0:Lcom/android/internal/policy/impl/RotaryLockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/RotaryLockScreen;->access$200(Lcom/android/internal/policy/impl/RotaryLockScreen;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen$5;->this$0:Lcom/android/internal/policy/impl/RotaryLockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/RotaryLockScreen;->access$300(Lcom/android/internal/policy/impl/RotaryLockScreen;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen$5;->this$0:Lcom/android/internal/policy/impl/RotaryLockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/RotaryLockScreen;->access$400(Lcom/android/internal/policy/impl/RotaryLockScreen;)Landroid/widget/ImageButton;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen$5;->this$0:Lcom/android/internal/policy/impl/RotaryLockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/RotaryLockScreen;->access$500(Lcom/android/internal/policy/impl/RotaryLockScreen;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen$5;->this$0:Lcom/android/internal/policy/impl/RotaryLockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/RotaryLockScreen;->access$600(Lcom/android/internal/policy/impl/RotaryLockScreen;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen$5;->this$0:Lcom/android/internal/policy/impl/RotaryLockScreen;

    const/16 v1, 0x55

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/RotaryLockScreen;->access$700(Lcom/android/internal/policy/impl/RotaryLockScreen;I)V

    .line 242
    :cond_0
    return-void
.end method
