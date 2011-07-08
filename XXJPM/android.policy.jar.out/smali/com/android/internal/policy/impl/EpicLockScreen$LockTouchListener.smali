.class Lcom/android/internal/policy/impl/EpicLockScreen$LockTouchListener;
.super Ljava/lang/Object;
.source "EpicLockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/UnlockMediaController$CDImageTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/EpicLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LockTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/EpicLockScreen;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/EpicLockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 1269
    iput-object p1, p0, Lcom/android/internal/policy/impl/EpicLockScreen$LockTouchListener;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/EpicLockScreen;Lcom/android/internal/policy/impl/EpicLockScreen$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1269
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/EpicLockScreen$LockTouchListener;-><init>(Lcom/android/internal/policy/impl/EpicLockScreen;)V

    return-void
.end method


# virtual methods
.method public onControllerOpened(Z)V
    .locals 0
    .parameter "opened"

    .prologue
    .line 1278
    return-void
.end method

.method public onControllerVisible(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 1281
    iget-object v0, p0, Lcom/android/internal/policy/impl/EpicLockScreen$LockTouchListener;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$2602(Lcom/android/internal/policy/impl/EpicLockScreen;Z)Z

    .line 1282
    return-void
.end method

.method public onTouchedCD()V
    .locals 1

    .prologue
    .line 1273
    iget-object v0, p0, Lcom/android/internal/policy/impl/EpicLockScreen$LockTouchListener;->this$0:Lcom/android/internal/policy/impl/EpicLockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/EpicLockScreen;->access$1000(Lcom/android/internal/policy/impl/EpicLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 1274
    return-void
.end method
