.class Lcom/android/internal/policy/impl/RotaryLockScreen$1;
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
    .line 179
    iput-object p1, p0, Lcom/android/internal/policy/impl/RotaryLockScreen$1;->this$0:Lcom/android/internal/policy/impl/RotaryLockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen$1;->this$0:Lcom/android/internal/policy/impl/RotaryLockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/RotaryLockScreen;->access$000(Lcom/android/internal/policy/impl/RotaryLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->takeEmergencyCallAction()V

    .line 181
    return-void
.end method
