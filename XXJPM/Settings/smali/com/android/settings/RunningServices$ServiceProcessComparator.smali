.class Lcom/android/settings/RunningServices$ServiceProcessComparator;
.super Ljava/lang/Object;
.source "RunningServices.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RunningServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ServiceProcessComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/settings/RunningServices$ProcessItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings/RunningServices$ProcessItem;Lcom/android/settings/RunningServices$ProcessItem;)I
    .locals 6
    .parameter "object1"
    .parameter "object2"

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 394
    iget-boolean v0, p1, Lcom/android/settings/RunningServices$ProcessItem;->mIsStarted:Z

    iget-boolean v1, p2, Lcom/android/settings/RunningServices$ProcessItem;->mIsStarted:Z

    if-eq v0, v1, :cond_1

    .line 396
    iget-boolean v0, p1, Lcom/android/settings/RunningServices$ProcessItem;->mIsStarted:Z

    if-eqz v0, :cond_0

    move v0, v4

    .line 407
    :goto_0
    return v0

    :cond_0
    move v0, v5

    .line 396
    goto :goto_0

    .line 398
    :cond_1
    iget-boolean v0, p1, Lcom/android/settings/RunningServices$ProcessItem;->mIsSystem:Z

    iget-boolean v1, p2, Lcom/android/settings/RunningServices$ProcessItem;->mIsSystem:Z

    if-eq v0, v1, :cond_3

    .line 400
    iget-boolean v0, p1, Lcom/android/settings/RunningServices$ProcessItem;->mIsSystem:Z

    if-eqz v0, :cond_2

    move v0, v5

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_0

    .line 402
    :cond_3
    iget-wide v0, p1, Lcom/android/settings/RunningServices$ProcessItem;->mActiveSince:J

    iget-wide v2, p2, Lcom/android/settings/RunningServices$ProcessItem;->mActiveSince:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    .line 405
    iget-wide v0, p1, Lcom/android/settings/RunningServices$ProcessItem;->mActiveSince:J

    iget-wide v2, p2, Lcom/android/settings/RunningServices$ProcessItem;->mActiveSince:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    move v0, v4

    goto :goto_0

    :cond_4
    move v0, v5

    goto :goto_0

    .line 407
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 392
    check-cast p1, Lcom/android/settings/RunningServices$ProcessItem;

    .end local p1
    check-cast p2, Lcom/android/settings/RunningServices$ProcessItem;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/RunningServices$ServiceProcessComparator;->compare(Lcom/android/settings/RunningServices$ProcessItem;Lcom/android/settings/RunningServices$ProcessItem;)I

    move-result v0

    return v0
.end method
