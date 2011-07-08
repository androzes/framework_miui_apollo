.class Lcom/android/internal/policy/impl/SGS2LockScreen$1;
.super Ljava/lang/Object;
.source "SGS2LockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/SGS2LockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/SGS2LockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SGS2LockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$1;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const-string v1, "SGS2LockScreen"

    .line 178
    const-string v0, "SGS2LockScreen"

    const-string v0, "mStartLockAnimation()"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v0, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$1;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/SGS2LockScreen;->access$000(Lcom/android/internal/policy/impl/SGS2LockScreen;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$1;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/SGS2LockScreen;->access$000(Lcom/android/internal/policy/impl/SGS2LockScreen;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$1;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreen;

    invoke-static {v1}, Lcom/android/internal/policy/impl/SGS2LockScreen;->access$100(Lcom/android/internal/policy/impl/SGS2LockScreen;)Landroid/view/animation/TranslateAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 183
    :goto_0
    return-void

    .line 182
    :cond_0
    const-string v0, "SGS2LockScreen"

    const-string v0, "mStartLockAnimation : mMainLayout is null."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
