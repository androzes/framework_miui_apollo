.class Lcom/nemustech/tiffany/widget/TFHorizontalListView$ArrowScrollFocusResult;
.super Ljava/lang/Object;
.source "TFHorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/widget/TFHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArrowScrollFocusResult"
.end annotation


# instance fields
.field private mAmountToScroll:I

.field private mSelectedPosition:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nemustech/tiffany/widget/TFHorizontalListView$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2502
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFHorizontalListView$ArrowScrollFocusResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmountToScroll()I
    .locals 1

    .prologue
    .line 2519
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView$ArrowScrollFocusResult;->mAmountToScroll:I

    return v0
.end method

.method public getSelectedPosition()I
    .locals 1

    .prologue
    .line 2515
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView$ArrowScrollFocusResult;->mSelectedPosition:I

    return v0
.end method

.method populate(II)V
    .locals 0
    .parameter "selectedPosition"
    .parameter "amountToScroll"

    .prologue
    .line 2510
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView$ArrowScrollFocusResult;->mSelectedPosition:I

    .line 2511
    iput p2, p0, Lcom/nemustech/tiffany/widget/TFHorizontalListView$ArrowScrollFocusResult;->mAmountToScroll:I

    .line 2512
    return-void
.end method
