.class Lcom/android/internal/policy/impl/StarWarsLockScreen$7;
.super Ljava/lang/Object;
.source "StarWarsLockScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/StarWarsLockScreen;-><init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
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
    .line 259
    iput-object p1, p0, Lcom/android/internal/policy/impl/StarWarsLockScreen$7;->this$0:Lcom/android/internal/policy/impl/StarWarsLockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/internal/policy/impl/StarWarsLockScreen$7;->this$0:Lcom/android/internal/policy/impl/StarWarsLockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/StarWarsLockScreen;->access$000(Lcom/android/internal/policy/impl/StarWarsLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 262
    iget-object v0, p0, Lcom/android/internal/policy/impl/StarWarsLockScreen$7;->this$0:Lcom/android/internal/policy/impl/StarWarsLockScreen;

    const/16 v1, 0x58

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/StarWarsLockScreen;->access$700(Lcom/android/internal/policy/impl/StarWarsLockScreen;I)V

    .line 263
    return-void
.end method
