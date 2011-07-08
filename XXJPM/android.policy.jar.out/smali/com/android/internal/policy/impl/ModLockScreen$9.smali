.class Lcom/android/internal/policy/impl/ModLockScreen$9;
.super Ljava/lang/Object;
.source "ModLockScreen.java"

# interfaces
.implements Lcom/android/internal/widget/SlidingTab$OnTriggerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/ModLockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/ModLockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/ModLockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 384
    iput-object p1, p0, Lcom/android/internal/policy/impl/ModLockScreen$9;->this$0:Lcom/android/internal/policy/impl/ModLockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 1
    .parameter "v"
    .parameter "grabbedState"

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/internal/policy/impl/ModLockScreen$9;->this$0:Lcom/android/internal/policy/impl/ModLockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/ModLockScreen;->access$000(Lcom/android/internal/policy/impl/ModLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 410
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 4
    .parameter "v"
    .parameter "whichHandle"

    .prologue
    .line 386
    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    .line 387
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 388
    .local v0, callIntent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 389
    iget-object v2, p0, Lcom/android/internal/policy/impl/ModLockScreen$9;->this$0:Lcom/android/internal/policy/impl/ModLockScreen;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/ModLockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 390
    iget-object v2, p0, Lcom/android/internal/policy/impl/ModLockScreen$9;->this$0:Lcom/android/internal/policy/impl/ModLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/ModLockScreen;->access$000(Lcom/android/internal/policy/impl/ModLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 405
    .end local v0           #callIntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 391
    :cond_1
    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    .line 392
    iget-object v2, p0, Lcom/android/internal/policy/impl/ModLockScreen$9;->this$0:Lcom/android/internal/policy/impl/ModLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/ModLockScreen;->access$800(Lcom/android/internal/policy/impl/ModLockScreen;)Ljava/lang/String;

    move-result-object v2

    .line 394
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/ModLockScreen$9;->this$0:Lcom/android/internal/policy/impl/ModLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/ModLockScreen;->access$800(Lcom/android/internal/policy/impl/ModLockScreen;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 395
    .local v1, i:Landroid/content/Intent;
    const/high16 v2, 0x1020

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 396
    iget-object v2, p0, Lcom/android/internal/policy/impl/ModLockScreen$9;->this$0:Lcom/android/internal/policy/impl/ModLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/ModLockScreen;->access$900(Lcom/android/internal/policy/impl/ModLockScreen;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 397
    iget-object v2, p0, Lcom/android/internal/policy/impl/ModLockScreen$9;->this$0:Lcom/android/internal/policy/impl/ModLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/ModLockScreen;->access$000(Lcom/android/internal/policy/impl/ModLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 399
    .end local v1           #i:Landroid/content/Intent;
    :catch_0
    move-exception v2

    goto :goto_0

    .line 401
    :catch_1
    move-exception v2

    goto :goto_0
.end method
