.class Lcom/android/internal/policy/impl/SGS2LockScreen$LockTouchListener;
.super Ljava/lang/Object;
.source "SGS2LockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/UnlockMediaController$CDImageTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/SGS2LockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LockTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/SGS2LockScreen;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/SGS2LockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 637
    iput-object p1, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$LockTouchListener;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/SGS2LockScreen;Lcom/android/internal/policy/impl/SGS2LockScreen$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 637
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/SGS2LockScreen$LockTouchListener;-><init>(Lcom/android/internal/policy/impl/SGS2LockScreen;)V

    return-void
.end method


# virtual methods
.method public onControllerOpened(Z)V
    .locals 0
    .parameter "opened"

    .prologue
    .line 646
    return-void
.end method

.method public onControllerVisible(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 649
    iget-object v0, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$LockTouchListener;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreen;

    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/SGS2LockScreen;->access$1302(Lcom/android/internal/policy/impl/SGS2LockScreen;Z)Z

    .line 650
    return-void
.end method

.method public onTouchedCD()V
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Lcom/android/internal/policy/impl/SGS2LockScreen$LockTouchListener;->this$0:Lcom/android/internal/policy/impl/SGS2LockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/SGS2LockScreen;->access$000(Lcom/android/internal/policy/impl/SGS2LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 642
    return-void
.end method
