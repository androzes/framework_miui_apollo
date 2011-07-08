.class Lcom/android/internal/policy/impl/PuzzleLockScreen$LockTouchListener;
.super Ljava/lang/Object;
.source "PuzzleLockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/UnlockMediaController$CDImageTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PuzzleLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LockTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/PuzzleLockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 834
    iput-object p1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$LockTouchListener;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/PuzzleLockScreen;Lcom/android/internal/policy/impl/PuzzleLockScreen$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 834
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PuzzleLockScreen$LockTouchListener;-><init>(Lcom/android/internal/policy/impl/PuzzleLockScreen;)V

    return-void
.end method


# virtual methods
.method public onControllerOpened(Z)V
    .locals 0
    .parameter "opened"

    .prologue
    .line 843
    return-void
.end method

.method public onControllerVisible(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 846
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$LockTouchListener;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$2502(Lcom/android/internal/policy/impl/PuzzleLockScreen;Z)Z

    .line 847
    return-void
.end method

.method public onTouchedCD()V
    .locals 1

    .prologue
    .line 838
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$LockTouchListener;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$200(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 839
    return-void
.end method
