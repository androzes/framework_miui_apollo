.class Lcom/android/internal/telephony/RetryManager$RetryRec;
.super Ljava/lang/Object;
.source "RetryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RetryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RetryRec"
.end annotation


# instance fields
.field mDelayTime:I

.field mRandomizationTime:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .parameter "delayTime"
    .parameter "randomizationTime"

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput p1, p0, Lcom/android/internal/telephony/RetryManager$RetryRec;->mDelayTime:I

    .line 88
    iput p2, p0, Lcom/android/internal/telephony/RetryManager$RetryRec;->mRandomizationTime:I

    .line 89
    return-void
.end method
