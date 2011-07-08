.class public Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarInfo;
.super Ljava/lang/Object;
.source "TFSweepActionListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/widget/TFSweepActionListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SweepActionBarInfo"
.end annotation


# instance fields
.field public allowLeftToRightSweep:Z

.field public allowRightToLeftSweep:Z

.field public childIdForLocationHint:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, v1, v1, v0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarInfo;-><init>(ZZI)V

    .line 47
    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 1
    .parameter "allowLeftToRightSweep"
    .parameter "allowRightToLeftSweep"

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarInfo;-><init>(ZZI)V

    .line 50
    return-void
.end method

.method public constructor <init>(ZZI)V
    .locals 0
    .parameter "allowLeftToRightSweep"
    .parameter "allowRightToLeftSweep"
    .parameter "childIdForLocationHint"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-boolean p1, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarInfo;->allowLeftToRightSweep:Z

    .line 53
    iput-boolean p2, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarInfo;->allowRightToLeftSweep:Z

    .line 54
    iput p3, p0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarInfo;->childIdForLocationHint:I

    .line 55
    return-void
.end method
