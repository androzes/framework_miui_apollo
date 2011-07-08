.class public Lcom/android/internal/widget/PointerLocationView$PointerState;
.super Ljava/lang/Object;
.source "PointerLocationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/PointerLocationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PointerState"
.end annotation


# instance fields
.field private mCurDown:Z

.field private mCurPressure:F

.field private mCurSize:F

.field private mCurWidth:I

.field private mCurX:I

.field private mCurY:I

.field private mVelocity:Landroid/view/VelocityTracker;

.field private final mXs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mYs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mXs:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mYs:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mVelocity:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/internal/widget/PointerLocationView$PointerState;Landroid/view/VelocityTracker;)Landroid/view/VelocityTracker;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mVelocity:Landroid/view/VelocityTracker;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/internal/widget/PointerLocationView$PointerState;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mXs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mCurDown:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/widget/PointerLocationView$PointerState;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mCurDown:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/widget/PointerLocationView$PointerState;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mCurX:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/internal/widget/PointerLocationView$PointerState;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mCurX:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/widget/PointerLocationView$PointerState;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mCurY:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/internal/widget/PointerLocationView$PointerState;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mCurY:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/internal/widget/PointerLocationView$PointerState;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mYs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/widget/PointerLocationView$PointerState;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mCurPressure:F

    return v0
.end method

.method static synthetic access$602(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mCurPressure:F

    return p1
.end method

.method static synthetic access$700(Lcom/android/internal/widget/PointerLocationView$PointerState;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mCurSize:F

    return v0
.end method

.method static synthetic access$702(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mCurSize:F

    return p1
.end method

.method static synthetic access$800(Lcom/android/internal/widget/PointerLocationView$PointerState;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mCurWidth:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/internal/widget/PointerLocationView$PointerState;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mCurWidth:I

    return p1
.end method
