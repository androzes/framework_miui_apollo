.class Lcom/android/internal/policy/impl/SGS2LockScreen$2;
.super Ljava/lang/Object;
.source "SGS2LockScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/SGS2LockScreen;-><init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
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
    .line 281
    iput-object p1, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$2;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$2;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/SGS2LockScreen;->access$000(Lcom/android/internal/policy/impl/SGS2LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 284
    iget-object v0, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$2;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/SGS2LockScreen;->access$000(Lcom/android/internal/policy/impl/SGS2LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->takeEmergencyCallAction()V

    .line 285
    return-void
.end method
