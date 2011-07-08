.class final Lcom/android/internal/policy/impl/MiuiLockScreen$2;
.super Ljava/lang/Object;
.source "MiuiLockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MiuiLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private final sVibrator:Landroid/os/Vibrator;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 1107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1108
    new-instance v0, Landroid/os/Vibrator;

    invoke-direct {v0}, Landroid/os/Vibrator;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$2;->sVibrator:Landroid/os/Vibrator;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1112
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$2;->sVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 1113
    return-void
.end method
