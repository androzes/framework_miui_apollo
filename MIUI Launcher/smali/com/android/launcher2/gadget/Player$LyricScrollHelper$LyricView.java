package com.android.launcher2.gadget; class Player$LyricScrollHelper$LyricView {/*

.class Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;
.super Ljava/lang/Object;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/gadget/Player$LyricScrollHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LyricView"
.end annotation


# instance fields
.field private final HTML_BR:Ljava/lang/CharSequence;

.field private final INVALID_LYRIC_SHOT:Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricShot;

.field private mCurrentLine:I

.field private mLyricArr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final mLyricBuilder:Ljava/lang/StringBuilder;

.field private final mLyricViewAfter:Lcom/android/launcher2/gadget/LyricTextView;

.field private final mLyricViewBefore:Lcom/android/launcher2/gadget/LyricTextView;

.field private final mLyricViewCurrent:Lcom/android/launcher2/gadget/LyricTextView;

.field private mOffsetLineNumArr:[I

.field private mTimeArr:[I

.field final synthetic this$1:Lcom/android/launcher2/gadget/Player$LyricScrollHelper;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/gadget/Player$LyricScrollHelper;Landroid/view/View;)V
    .locals 7
    .parameter
    .parameter "parent"

    .prologue
    const/high16 v6, 0x3f80

    .line 689
    #v6=(Integer);
    iput-object p1, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->this$1:Lcom/android/launcher2/gadget/Player$LyricScrollHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 676
    #p0=(Reference);
    new-instance v1, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricShot;

    #v1=(UninitRef);
    iget-object v2, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->this$1:Lcom/android/launcher2/gadget/Player$LyricScrollHelper;

    #v2=(Reference);
    const/16 v3, -0xa

    #v3=(Byte);
    const-wide/16 v4, 0x0

    #v4=(LongLo);v5=(LongHi);
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricShot;-><init>(Lcom/android/launcher2/gadget/Player$LyricScrollHelper;ID)V

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->INVALID_LYRIC_SHOT:Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricShot;

    .line 678
    const-string v1, "<br/>"

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->HTML_BR:Ljava/lang/CharSequence;

    .line 690
    const v1, 0x7f08001d

    #v1=(Integer);
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/android/launcher2/gadget/LyricTextView;

    iput-object v1, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->mLyricViewCurrent:Lcom/android/launcher2/gadget/LyricTextView;

    .line 691
    const v1, 0x7f08001c

    #v1=(Integer);
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/android/launcher2/gadget/LyricTextView;

    iput-object v1, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->mLyricViewBefore:Lcom/android/launcher2/gadget/LyricTextView;

    .line 692
    const v1, 0x7f08001e

    #v1=(Integer);
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/android/launcher2/gadget/LyricTextView;

    iput-object v1, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->mLyricViewAfter:Lcom/android/launcher2/gadget/LyricTextView;

    .line 694
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0018

    #v2=(Integer);
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 695
    .local v0, lineExtraSpacing:F
    #v0=(Float);
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->mLyricViewCurrent:Lcom/android/launcher2/gadget/LyricTextView;

    invoke-virtual {v1, v0, v6}, Lcom/android/launcher2/gadget/LyricTextView;->setLineSpacing(FF)V

    .line 696
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->mLyricViewBefore:Lcom/android/launcher2/gadget/LyricTextView;

    invoke-virtual {v1, v0, v6}, Lcom/android/launcher2/gadget/LyricTextView;->setLineSpacing(FF)V

    .line 697
    iget-object v1, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->mLyricViewAfter:Lcom/android/launcher2/gadget/LyricTextView;

    invoke-virtual {v1, v0, v6}, Lcom/android/launcher2/gadget/LyricTextView;->setLineSpacing(FF)V

    .line 699
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->mLyricBuilder:Ljava/lang/StringBuilder;

    .line 700
    return-void
.end method

.method static synthetic access$3000(Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;FID)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 673
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->getScrollHeight(FID)I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method static synthetic access$3300(Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 673
    invoke-direct {p0, p1}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->setLyricArr(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 673
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->hasLyric()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method static synthetic access$3500(Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;[I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 673
    invoke-direct {p0, p1}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->setTimeArr([I)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 673
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->reset()V

    return-void
.end method

.method private getScrollHeight(FID)I
    .locals 9
    .parameter "lineHeight"
    .parameter "line"
    .parameter "percent"

    .prologue
    const/4 v6, 0x1

    .line 779
    #v6=(One);
    add-int/lit8 v0, p2, 0x6

    .line 781
    .local v0, absIndex:I
    #v0=(Integer);
    iget-object v3, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->mOffsetLineNumArr:[I

    #v3=(Reference);
    if-eqz v3, :cond_0

    if-lt v0, v6, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->mOffsetLineNumArr:[I

    array-length v3, v3

    #v3=(Integer);
    if-lt v0, v3, :cond_1

    .line 782
    :cond_0
    #v3=(Conflicted);
    const/4 v3, -0x1

    .line 787
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Integer);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    return v3

    .line 785
    :cond_1
    #v1=(Uninit);v2=(Uninit);v4=(Uninit);v5=(Uninit);v6=(One);v7=(Uninit);v8=(Uninit);
    iget-object v3, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->mOffsetLineNumArr:[I

    #v3=(Reference);
    aget v3, v3, v0

    #v3=(Integer);
    iget-object v4, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->mOffsetLineNumArr:[I

    #v4=(Reference);
    sub-int v5, v0, v6

    #v5=(Integer);
    aget v4, v4, v5

    #v4=(Integer);
    sub-int v1, v3, v4

    .line 786
    .local v1, lineCount:I
    #v1=(Integer);
    iget-object v3, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->mOffsetLineNumArr:[I

    #v3=(Reference);
    sub-int v4, v0, v6

    aget v3, v3, v4

    #v3=(Integer);
    const/4 v4, 0x6

    #v4=(PosByte);
    sub-int v2, v3, v4

    .line 787
    .local v2, offsetLine:I
    #v2=(Integer);
    float-to-double v3, p1

    #v3=(DoubleLo);v4=(DoubleHi);
    int-to-double v5, v2

    #v5=(DoubleLo);v6=(DoubleHi);
    int-to-double v7, v1

    #v7=(DoubleLo);v8=(DoubleHi);
    mul-double/2addr v7, p3

    add-double/2addr v5, v7

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x3fe0

    #v5=(LongLo);v6=(LongHi);
    add-double/2addr v3, v5

    double-to-int v3, v3

    #v3=(Integer);
    goto :goto_0
.end method

.method private hasLyric()Z
    .locals 1

    .prologue
    .line 720
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->mLyricArr:Ljava/util/ArrayList;

    #v0=(Reference);
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(Reference);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 703
    const/16 v0, -0xa

    #v0=(Byte);
    iput v0, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->mCurrentLine:I

    .line 704
    const/4 v0, 0x0

    #v0=(Null);
    iput-object v0, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->mOffsetLineNumArr:[I

    .line 705
    const-string v0, ""

    #v0=(Reference);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->setHintText(Ljava/lang/CharSequence;)V

    .line 706
    return-void
.end method

.method private setLyricArr(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 709
    .local p1, lyricArr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    iput-object p1, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->mLyricArr:Ljava/util/ArrayList;

    .line 710
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->mLyricArr:Ljava/util/ArrayList;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 711
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->mLyricArr:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/launcher2/gadget/Player$MusicUtils;->decorateLyricWithHtml(Ljava/util/ArrayList;)V

    .line 713
    :cond_0
    return-void
.end method

.method private setTimeArr([I)V
    .locals 0
    .parameter "timeArr"

    .prologue
    .line 716
    iput-object p1, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->mTimeArr:[I

    .line 717
    return-void
.end method


# virtual methods
.method public getAccurateLineHeight()F
    .locals 1

    .prologue
    .line 841
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->mLyricViewBefore:Lcom/android/launcher2/gadget/LyricTextView;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/launcher2/gadget/LyricTextView;->getAccurateLineHeight()F

    move-result v0

    #v0=(Float);
    return v0
.end method

.method public getLyricShot(J)Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricShot;
    .locals 12
    .parameter "time"

    .prologue
    .line 751
    iget-object v7, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->mTimeArr:[I

    #v7=(Reference);
    if-nez v7, :cond_0

    .line 752
    iget-object v7, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->INVALID_LYRIC_SHOT:Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricShot;

    .line 775
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);
    return-object v7

    .line 754
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);
    iget-object v7, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->mTimeArr:[I

    const/4 v8, 0x0

    #v8=(Null);
    aget v7, v7, v8

    #v7=(Integer);
    int-to-long v7, v7

    #v7=(LongLo);v8=(LongHi);
    cmp-long v7, v7, p1

    #v7=(Byte);
    if-lez v7, :cond_1

    .line 755
    new-instance v7, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricShot;

    #v7=(UninitRef);
    iget-object v8, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->this$1:Lcom/android/launcher2/gadget/Player$LyricScrollHelper;

    #v8=(Reference);
    const/4 v9, -0x1

    #v9=(Byte);
    const-wide/16 v10, 0x0

    #v10=(LongLo);v11=(LongHi);
    invoke-direct {v7, v8, v9, v10, v11}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricShot;-><init>(Lcom/android/launcher2/gadget/Player$LyricScrollHelper;ID)V

    .line 758
    :cond_1
    #v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    #v0=(Integer);v6=(Conflicted);
    iget-object v7, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->mTimeArr:[I

    #v7=(Reference);
    array-length v7, v7

    #v7=(Integer);
    if-ge v0, v7, :cond_4

    .line 759
    iget-object v7, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->mTimeArr:[I

    #v7=(Reference);
    aget v6, v7, v0

    .line 760
    .local v6, timeThis:I
    #v6=(Integer);
    int-to-long v7, v6

    #v7=(LongLo);v8=(LongHi);
    cmp-long v7, v7, p1

    #v7=(Byte);
    if-lez v7, :cond_3

    .line 761
    iget-object v7, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->mTimeArr:[I

    #v7=(Reference);
    const/4 v8, 0x1

    #v8=(One);
    sub-int v8, v0, v8

    #v8=(Integer);
    aget v5, v7, v8

    .line 762
    .local v5, timePrev:I
    #v5=(Integer);
    const-wide/16 v1, 0x0

    .line 763
    .local v1, percent:D
    #v1=(LongLo);v2=(LongHi);
    if-le v6, v5, :cond_2

    .line 764
    int-to-long v7, v5

    #v7=(LongLo);v8=(LongHi);
    sub-long v7, p1, v7

    long-to-double v7, v7

    #v7=(DoubleLo);v8=(DoubleHi);
    sub-int v9, v6, v5

    #v9=(Integer);
    int-to-double v9, v9

    #v9=(DoubleLo);v10=(DoubleHi);
    div-double v1, v7, v9

    .line 766
    :cond_2
    #v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    new-instance v7, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricShot;

    #v7=(UninitRef);
    iget-object v8, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->this$1:Lcom/android/launcher2/gadget/Player$LyricScrollHelper;

    #v8=(Reference);
    const/4 v9, 0x1

    #v9=(One);
    sub-int v9, v0, v9

    #v9=(Integer);
    invoke-direct {v7, v8, v9, v1, v2}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricShot;-><init>(Lcom/android/launcher2/gadget/Player$LyricScrollHelper;ID)V

    #v7=(Reference);
    goto :goto_0

    .line 758
    .end local v1           #percent:D
    .end local v5           #timePrev:I
    :cond_3
    #v1=(Uninit);v2=(Uninit);v5=(Uninit);v7=(Byte);v8=(LongHi);v9=(Conflicted);
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 769
    .end local v6           #timeThis:I
    :cond_4
    #v6=(Conflicted);v7=(Integer);v8=(Conflicted);
    iget-object v7, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->mTimeArr:[I

    #v7=(Reference);
    iget-object v8, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->mTimeArr:[I

    #v8=(Reference);
    array-length v8, v8

    #v8=(Integer);
    const/4 v9, 0x1

    #v9=(One);
    sub-int/2addr v8, v9

    aget v7, v7, v8

    #v7=(Integer);
    int-to-long v3, v7

    .line 770
    .local v3, timeLast:J
    #v3=(LongLo);v4=(LongHi);
    sub-long v7, p1, v3

    #v7=(LongLo);v8=(LongHi);
    const-wide/16 v9, 0x1f40

    #v9=(LongLo);v10=(LongHi);
    cmp-long v7, v7, v9

    #v7=(Byte);
    if-gez v7, :cond_5

    .line 771
    sub-long v7, p1, v3

    #v7=(LongLo);
    long-to-double v7, v7

    #v7=(DoubleLo);v8=(DoubleHi);
    const-wide v9, 0x40bf400000000000L

    div-double v1, v7, v9

    .line 772
    .restart local v1       #percent:D
    #v1=(DoubleLo);v2=(DoubleHi);
    new-instance v7, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricShot;

    #v7=(UninitRef);
    iget-object v8, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->this$1:Lcom/android/launcher2/gadget/Player$LyricScrollHelper;

    #v8=(Reference);
    iget-object v9, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->mTimeArr:[I

    #v9=(Reference);
    array-length v9, v9

    #v9=(Integer);
    const/4 v10, 0x1

    #v10=(One);
    sub-int/2addr v9, v10

    invoke-direct {v7, v8, v9, v1, v2}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricShot;-><init>(Lcom/android/launcher2/gadget/Player$LyricScrollHelper;ID)V

    #v7=(Reference);
    goto :goto_0

    .line 775
    .end local v1           #percent:D
    :cond_5
    #v1=(Uninit);v2=(Uninit);v7=(Byte);v8=(LongHi);v9=(LongLo);v10=(LongHi);
    new-instance v7, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricShot;

    #v7=(UninitRef);
    iget-object v8, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->this$1:Lcom/android/launcher2/gadget/Player$LyricScrollHelper;

    #v8=(Reference);
    iget-object v9, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->mTimeArr:[I

    #v9=(Reference);
    array-length v9, v9

    #v9=(Integer);
    const-wide/16 v10, 0x0

    #v10=(LongLo);v11=(LongHi);
    invoke-direct {v7, v8, v9, v10, v11}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricShot;-><init>(Lcom/android/launcher2/gadget/Player$LyricScrollHelper;ID)V

    #v7=(Reference);
    goto :goto_0
.end method

.method public getOffsetNumArr()[I
    .locals 9

    .prologue
    .line 724
    iget-object v7, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->mLyricViewBefore:Lcom/android/launcher2/gadget/LyricTextView;

    #v7=(Reference);
    invoke-virtual {v7}, Lcom/android/launcher2/gadget/LyricTextView;->getWidth()I

    move-result v7

    #v7=(Integer);
    if-lez v7, :cond_2

    .line 725
    iget-object v7, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->mLyricViewBefore:Lcom/android/launcher2/gadget/LyricTextView;

    #v7=(Reference);
    invoke-virtual {v7}, Lcom/android/launcher2/gadget/LyricTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    .line 726
    .local v6, temp:Ljava/lang/CharSequence;
    #v6=(Reference);
    iget-object v7, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->mLyricViewBefore:Lcom/android/launcher2/gadget/LyricTextView;

    const-string v8, ""

    #v8=(Reference);
    invoke-virtual {v7, v8}, Lcom/android/launcher2/gadget/LyricTextView;->setText(Ljava/lang/CharSequence;)V

    .line 728
    const/4 v5, -0x6

    .line 729
    .local v5, start:I
    #v5=(Byte);
    iget-object v7, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->mLyricArr:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 730
    .local v0, end:I
    #v0=(Integer);
    sub-int v7, v0, v5

    #v7=(Integer);
    add-int/lit8 v7, v7, 0x1

    new-array v3, v7, [I

    .line 732
    .local v3, ret:[I
    #v3=(Reference);
    move v1, v5

    .local v1, i:I
    :goto_0
    #v1=(Integer);v2=(Conflicted);v4=(Conflicted);v8=(Conflicted);
    if-ge v1, v0, :cond_1

    .line 733
    iget-object v4, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->HTML_BR:Ljava/lang/CharSequence;

    .line 734
    .local v4, spanned:Ljava/lang/CharSequence;
    #v4=(Reference);
    if-ltz v1, :cond_0

    .line 735
    iget-object v7, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->mLyricArr:Ljava/util/ArrayList;

    #v7=(Reference);
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #spanned:Ljava/lang/CharSequence;
    check-cast v4, Ljava/lang/CharSequence;

    .line 737
    .restart local v4       #spanned:Ljava/lang/CharSequence;
    :cond_0
    #v7=(Conflicted);
    iget-object v7, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->mLyricViewBefore:Lcom/android/launcher2/gadget/LyricTextView;

    #v7=(Reference);
    invoke-virtual {v7, v4}, Lcom/android/launcher2/gadget/LyricTextView;->append(Ljava/lang/CharSequence;)V

    .line 739
    sub-int v2, v1, v5

    .line 742
    .local v2, offset:I
    #v2=(Integer);
    iget-object v7, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->mLyricViewBefore:Lcom/android/launcher2/gadget/LyricTextView;

    invoke-virtual {v7}, Lcom/android/launcher2/gadget/LyricTextView;->getLineCount()I

    move-result v7

    #v7=(Integer);
    const/4 v8, 0x1

    #v8=(One);
    sub-int/2addr v7, v8

    aput v7, v3, v2

    .line 732
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 744
    .end local v2           #offset:I
    .end local v4           #spanned:Ljava/lang/CharSequence;
    :cond_1
    #v2=(Conflicted);v4=(Conflicted);v8=(Conflicted);
    iget-object v7, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->mLyricViewBefore:Lcom/android/launcher2/gadget/LyricTextView;

    #v7=(Reference);
    invoke-virtual {v7, v6}, Lcom/android/launcher2/gadget/LyricTextView;->setText(Ljava/lang/CharSequence;)V

    move-object v7, v3

    .line 747
    .end local v0           #end:I
    .end local v1           #i:I
    .end local v3           #ret:[I
    .end local v5           #start:I
    .end local v6           #temp:Ljava/lang/CharSequence;
    :goto_1
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    return-object v7

    :cond_2
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Integer);v8=(Uninit);
    const/4 v7, 0x0

    #v7=(Null);
    goto :goto_1
.end method

.method public setHintText(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "hint"

    .prologue
    const-string v2, ""

    .line 845
    #v2=(Reference);
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->mLyricViewBefore:Lcom/android/launcher2/gadget/LyricTextView;

    #v0=(Reference);
    const-string v1, "\n\n\n"

    #v1=(Reference);
    invoke-virtual {v0, v1}, Lcom/android/launcher2/gadget/LyricTextView;->setText(Ljava/lang/CharSequence;)V

    .line 846
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->mLyricViewBefore:Lcom/android/launcher2/gadget/LyricTextView;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/gadget/LyricTextView;->append(Ljava/lang/CharSequence;)V

    .line 848
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->mLyricViewCurrent:Lcom/android/launcher2/gadget/LyricTextView;

    const-string v1, ""

    invoke-virtual {v0, v2}, Lcom/android/launcher2/gadget/LyricTextView;->setText(Ljava/lang/CharSequence;)V

    .line 849
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->mLyricViewAfter:Lcom/android/launcher2/gadget/LyricTextView;

    const-string v1, ""

    invoke-virtual {v0, v2}, Lcom/android/launcher2/gadget/LyricTextView;->setText(Ljava/lang/CharSequence;)V

    .line 850
    return-void
.end method

.method public updateCurrentLine(I)V
    .locals 10
    .parameter "line"

    .prologue
    const/4 v8, 0x1

    #v8=(One);
    const/4 v7, 0x0

    #v7=(Null);
    const-string v9, ""

    .line 791
    #v9=(Reference);
    iget v4, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->mCurrentLine:I

    #v4=(Integer);
    if-eq p1, v4, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->hasLyric()Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_1

    .line 838
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    return-void

    .line 794
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Boolean);v5=(Uninit);v6=(Uninit);
    iget-object v4, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->mOffsetLineNumArr:[I

    #v4=(Reference);
    if-nez v4, :cond_2

    .line 795
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->getOffsetNumArr()[I

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->mOffsetLineNumArr:[I

    .line 798
    :cond_2
    iput p1, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->mCurrentLine:I

    .line 799
    const/4 v3, -0x6

    .line 800
    .local v3, startLine:I
    #v3=(Byte);
    iget-object v4, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->mLyricArr:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 801
    .local v2, size:I
    #v2=(Integer);
    if-le p1, v2, :cond_3

    .line 802
    move p1, v2

    .line 804
    :cond_3
    iget-object v4, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->mLyricBuilder:Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->mLyricBuilder:Ljava/lang/StringBuilder;

    #v5=(Reference);
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    #v5=(Integer);
    invoke-virtual {v4, v7, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 805
    move v1, v3

    .local v1, i:I
    :goto_1
    #v1=(Integer);v5=(Conflicted);
    if-ge v1, p1, :cond_5

    .line 806
    if-gez v1, :cond_4

    .line 807
    iget-object v4, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->mLyricBuilder:Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->HTML_BR:Ljava/lang/CharSequence;

    #v5=(Reference);
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 805
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 809
    :cond_4
    #v5=(Conflicted);
    iget-object v5, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->mLyricBuilder:Ljava/lang/StringBuilder;

    #v5=(Reference);
    iget-object v4, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->mLyricArr:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 814
    :cond_5
    #v5=(Conflicted);
    iget-object v4, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->mLyricBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    #v4=(Integer);
    if-lez v4, :cond_6

    .line 815
    iget-object v4, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->mLyricBuilder:Ljava/lang/StringBuilder;

    #v4=(Reference);
    iget-object v5, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->mLyricBuilder:Ljava/lang/StringBuilder;

    #v5=(Reference);
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    #v5=(Integer);
    sub-int/2addr v5, v8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 818
    :cond_6
    #v4=(Conflicted);v5=(Conflicted);
    iget-object v4, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->mLyricViewBefore:Lcom/android/launcher2/gadget/LyricTextView;

    #v4=(Reference);
    iget-object v5, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->mLyricBuilder:Ljava/lang/StringBuilder;

    #v5=(Reference);
    iget-object v6, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->mLyricBuilder:Ljava/lang/StringBuilder;

    #v6=(Reference);
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    #v6=(Integer);
    invoke-virtual {v5, v7, v6}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/launcher2/gadget/LyricTextView;->setText(Ljava/lang/CharSequence;)V

    .line 819
    if-lt p1, v2, :cond_7

    .line 820
    iget-object v4, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->mLyricViewCurrent:Lcom/android/launcher2/gadget/LyricTextView;

    const-string v5, ""

    invoke-virtual {v4, v9}, Lcom/android/launcher2/gadget/LyricTextView;->setText(Ljava/lang/CharSequence;)V

    .line 821
    iget-object v4, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->mLyricViewAfter:Lcom/android/launcher2/gadget/LyricTextView;

    const-string v5, ""

    invoke-virtual {v4, v9}, Lcom/android/launcher2/gadget/LyricTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 824
    :cond_7
    if-ltz p1, :cond_9

    .line 825
    iget-object v4, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->mLyricArr:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Ljava/lang/CharSequence;

    .line 826
    .local v0, current:Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    #v4=(Integer);
    if-lez v4, :cond_8

    .line 827
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sub-int/2addr v4, v8

    invoke-interface {v0, v7, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 829
    :cond_8
    iget-object v4, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->mLyricViewCurrent:Lcom/android/launcher2/gadget/LyricTextView;

    #v4=(Reference);
    invoke-virtual {v4, v0}, Lcom/android/launcher2/gadget/LyricTextView;->setText(Ljava/lang/CharSequence;)V

    .line 832
    .end local v0           #current:Ljava/lang/CharSequence;
    :cond_9
    #v0=(Conflicted);
    iget-object v4, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->mLyricBuilder:Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->mLyricBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    #v5=(Integer);
    invoke-virtual {v4, v7, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 833
    add-int/lit8 v1, p1, 0x1

    :goto_3
    #v5=(Conflicted);
    if-ge v1, v2, :cond_a

    .line 834
    iget-object v5, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->mLyricBuilder:Ljava/lang/StringBuilder;

    #v5=(Reference);
    iget-object v4, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->mLyricArr:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 833
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 837
    :cond_a
    #v5=(Conflicted);
    iget-object v4, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->mLyricViewAfter:Lcom/android/launcher2/gadget/LyricTextView;

    iget-object v5, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->mLyricBuilder:Ljava/lang/StringBuilder;

    #v5=(Reference);
    iget-object v6, p0, Lcom/android/launcher2/gadget/Player$LyricScrollHelper$LyricView;->mLyricBuilder:Ljava/lang/StringBuilder;

    #v6=(Reference);
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    #v6=(Integer);
    invoke-virtual {v5, v7, v6}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/launcher2/gadget/LyricTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

*/}
