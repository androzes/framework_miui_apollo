.class Lcom/android/internal/policy/impl/StarWarsLockScreen$1;
.super Ljava/lang/Object;
.source "StarWarsLockScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/StarWarsLockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/StarWarsLockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/StarWarsLockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/internal/policy/impl/StarWarsLockScreen$1;->this$0:Lcom/android/internal/policy/impl/StarWarsLockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/internal/policy/impl/StarWarsLockScreen$1;->this$0:Lcom/android/internal/policy/impl/StarWarsLockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/StarWarsLockScreen;->access$000(Lcom/android/internal/policy/impl/StarWarsLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 237
    iget-object v0, p0, Lcom/android/internal/policy/impl/StarWarsLockScreen$1;->this$0:Lcom/android/internal/policy/impl/StarWarsLockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/StarWarsLockScreen;->access$000(Lcom/android/internal/policy/impl/StarWarsLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->takeEmergencyCallAction()V

    .line 238
    return-void
.end method
