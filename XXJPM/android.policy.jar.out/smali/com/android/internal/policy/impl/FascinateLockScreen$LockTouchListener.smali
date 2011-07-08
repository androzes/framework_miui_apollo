.class Lcom/android/internal/policy/impl/FascinateLockScreen$LockTouchListener;
.super Ljava/lang/Object;
.source "FascinateLockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/UnlockMediaController$CDImageTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/FascinateLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LockTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/FascinateLockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 1075
    iput-object p1, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$LockTouchListener;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/FascinateLockScreen;Lcom/android/internal/policy/impl/FascinateLockScreen$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1075
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/FascinateLockScreen$LockTouchListener;-><init>(Lcom/android/internal/policy/impl/FascinateLockScreen;)V

    return-void
.end method


# virtual methods
.method public onControllerOpened(Z)V
    .locals 0
    .parameter "opened"

    .prologue
    .line 1084
    return-void
.end method

.method public onControllerVisible(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$LockTouchListener;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$2602(Lcom/android/internal/policy/impl/FascinateLockScreen;Z)Z

    .line 1088
    return-void
.end method

.method public onTouchedCD()V
    .locals 1

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/android/internal/policy/impl/FascinateLockScreen$LockTouchListener;->this$0:Lcom/android/internal/policy/impl/FascinateLockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/FascinateLockScreen;->access$600(Lcom/android/internal/policy/impl/FascinateLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 1080
    return-void
.end method
