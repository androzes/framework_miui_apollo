package com.android.launcher2.gadget; class FrequentContacts {/*

.class public Lcom/android/launcher2/gadget/FrequentContacts;
.super Landroid/widget/FrameLayout;
.source "FrequentContacts.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/launcher2/gadget/Gadget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/gadget/FrequentContacts$1;,
        Lcom/android/launcher2/gadget/FrequentContacts$AlphaAnimationListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final LAYER_ALPHA_RATIO:[F

.field private static final LAYER_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

.field private static final LAYER_RESOURCE_ID:[I

.field private static final LAYER_SCALE_RATIO:[F

.field private static final LAYER_TRANSLATE_RATIO:[F


# instance fields
.field private mAnimationListener:Lcom/android/launcher2/gadget/FrequentContacts$AlphaAnimationListener;

.field private mContactId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mContactLookup:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContactName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContactPhotoId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mCountPerPage:I

.field private mCurrentPageIndex:I

.field private mLastDownY:F

.field private mLastPageIndex:I

.field private mLightEffect:Landroid/widget/ImageView;

.field private mNextPageIndex:I

.field private mOptionEdit:Landroid/widget/TextView;

.field private mOptionStyle:Landroid/widget/TextView;

.field private mOptions:Landroid/view/View;

.field private mPageBorderSize:I

.field private mPageContentSize:I

.field private mPageIndexOfOption:I

.field private mPageItemSize:I

.field private mPageSize:I

.field private mPages:[Landroid/widget/FrameLayout;

.field private mPhotoCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private mResolver:Landroid/content/ContentResolver;

.field private mRotateDownAnimations:[Landroid/view/animation/Animation;

.field private mRotateUpAnimations:[Landroid/view/animation/Animation;

.field private mStyle:I

.field private mTouchSlop:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x4

    .line 65
    #v1=(PosByte);
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/android/launcher2/gadget/FrequentContacts;->ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 69
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_TRANSLATE_RATIO:[F

    .line 70
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_SCALE_RATIO:[F

    .line 71
    new-array v0, v1, [F

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_ALPHA_RATIO:[F

    .line 73
    const/4 v0, 0x6

    #v0=(PosByte);
    new-array v0, v0, [I

    #v0=(Reference);
    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_RESOURCE_ID:[I

    .line 81
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    #v0=(UninitRef);
    const/4 v1, 0x0

    #v1=(Null);
    const/4 v2, -0x2

    #v2=(Byte);
    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    #v0=(Reference);
    sput-object v0, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    return-void

    .line 69
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x70t 0x41t
        0x0t 0x0t 0x8t 0x42t
        0x0t 0x0t 0x70t 0x42t
    .end array-data

    .line 70
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x9dt 0x43t
        0x0t 0x0t 0xb0t 0x43t
        0x0t 0x0t 0xc5t 0x43t
        0x0t 0x0t 0xdbt 0x43t
    .end array-data

    .line 71
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xc3t 0xf5t 0xa8t 0x3et
        0xc3t 0xf5t 0x28t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 73
    :array_3
    .array-data 0x4
        0x2at 0x0t 0x2t 0x7ft
        0x22t 0x0t 0x2t 0x7ft
        0x2bt 0x0t 0x2t 0x7ft
        0x23t 0x0t 0x2t 0x7ft
        0x2ct 0x0t 0x2t 0x7ft
        0x24t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, -0x1

    .line 122
    #v3=(Byte);
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 88
    #p0=(Reference);
    iget v1, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mStyle:I

    #v1=(Integer);
    iget v2, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mStyle:I

    #v2=(Integer);
    mul-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mCountPerPage:I

    .line 97
    iput v3, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPageIndexOfOption:I

    .line 106
    iput v3, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mCurrentPageIndex:I

    .line 107
    iput v3, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mNextPageIndex:I

    .line 108
    iput v3, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mLastPageIndex:I

    .line 110
    new-instance v1, Ljava/util/ArrayList;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mContactId:Ljava/util/ArrayList;

    .line 111
    new-instance v1, Ljava/util/ArrayList;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mContactName:Ljava/util/ArrayList;

    .line 112
    new-instance v1, Ljava/util/ArrayList;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mContactLookup:Ljava/util/ArrayList;

    .line 113
    new-instance v1, Ljava/util/ArrayList;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mContactPhotoId:Ljava/util/ArrayList;

    .line 114
    new-instance v1, Ljava/util/HashMap;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPhotoCache:Ljava/util/HashMap;

    .line 767
    new-instance v1, Lcom/android/launcher2/gadget/FrequentContacts$AlphaAnimationListener;

    #v1=(UninitRef);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-direct {v1, p0, v2}, Lcom/android/launcher2/gadget/FrequentContacts$AlphaAnimationListener;-><init>(Lcom/android/launcher2/gadget/FrequentContacts;Lcom/android/launcher2/gadget/FrequentContacts$1;)V

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mAnimationListener:Lcom/android/launcher2/gadget/FrequentContacts$AlphaAnimationListener;

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mResolver:Landroid/content/ContentResolver;

    .line 125
    invoke-direct {p0}, Lcom/android/launcher2/gadget/FrequentContacts;->setupViews()V

    .line 126
    invoke-direct {p0}, Lcom/android/launcher2/gadget/FrequentContacts;->prepareAnimations()V

    .line 127
    invoke-direct {p0}, Lcom/android/launcher2/gadget/FrequentContacts;->reloadContacts()V

    .line 129
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 130
    .local v0, configuration:Landroid/view/ViewConfiguration;
    #v0=(Reference);
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    #v1=(Integer);
    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    #v1=(Float);
    iput v1, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mTouchSlop:F

    .line 131
    return-void
.end method

.method static synthetic access$000()[F
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_ALPHA_RATIO:[F

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/gadget/FrequentContacts;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mNextPageIndex:I

    #v0=(Integer);
    return v0
.end method

.method static synthetic access$102(Lcom/android/launcher2/gadget/FrequentContacts;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput p1, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mNextPageIndex:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/launcher2/gadget/FrequentContacts;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mCurrentPageIndex:I

    #v0=(Integer);
    return v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/gadget/FrequentContacts;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/launcher2/gadget/FrequentContacts;->setCurrentPage(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/launcher2/gadget/FrequentContacts;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/launcher2/gadget/FrequentContacts;->rebindContactPage(I)V

    return-void
.end method

.method private generateLayerAnimation(FFFFFFF)Landroid/view/animation/Animation;
    .locals 17
    .parameter "fromAlpha"
    .parameter "toAlpha"
    .parameter "fromScale"
    .parameter "toScale"
    .parameter "pivot"
    .parameter "fromTranslate"
    .parameter "toTranslate"

    .prologue
    .line 251
    new-instance v14, Landroid/view/animation/AlphaAnimation;

    #v14=(UninitRef);
    move-object v0, v14

    #v0=(UninitRef);
    move/from16 v1, p1

    #v1=(Float);
    move/from16 v2, p2

    #v2=(Float);
    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 252
    .local v14, alpha:Landroid/view/animation/AlphaAnimation;
    #v0=(Reference);v14=(Reference);
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    #v5=(UninitRef);
    const/high16 v8, 0x3f80

    #v8=(Integer);
    const/high16 v9, 0x3f80

    #v9=(Integer);
    const/4 v10, 0x1

    #v10=(One);
    const/high16 v11, 0x3f00

    #v11=(Integer);
    const/4 v12, 0x1

    #v12=(One);
    move/from16 v6, p3

    #v6=(Float);
    move/from16 v7, p4

    #v7=(Float);
    move/from16 v13, p5

    #v13=(Float);
    invoke-direct/range {v5 .. v13}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 255
    .local v5, scale:Landroid/view/animation/ScaleAnimation;
    #v5=(Reference);
    new-instance v16, Landroid/view/animation/TranslateAnimation;

    #v16=(UninitRef);
    const/4 v6, 0x0

    #v6=(Null);
    const/4 v7, 0x0

    #v7=(Null);
    move-object/from16 v0, v16

    #v0=(UninitRef);
    move v1, v6

    #v1=(Null);
    move v2, v7

    #v2=(Null);
    move/from16 v3, p6

    #v3=(Float);
    move/from16 v4, p7

    #v4=(Float);
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 257
    .local v16, translate:Landroid/view/animation/TranslateAnimation;
    #v0=(Reference);v16=(Reference);
    new-instance v15, Landroid/view/animation/AnimationSet;

    #v15=(UninitRef);
    const/4 v6, 0x1

    #v6=(One);
    invoke-direct {v15, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 258
    .local v15, set:Landroid/view/animation/AnimationSet;
    #v15=(Reference);
    invoke-virtual {v15, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 259
    invoke-virtual {v15, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 260
    invoke-virtual/range {v15 .. v16}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 261
    sget-object v6, Lcom/android/launcher2/gadget/FrequentContacts;->ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    #v6=(Reference);
    invoke-virtual {v15, v6}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 262
    const-wide/16 v6, 0x12c

    #v6=(LongLo);v7=(LongHi);
    invoke-virtual {v15, v6, v7}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 263
    const/4 v6, 0x1

    #v6=(One);
    invoke-virtual {v15, v6}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 265
    return-object v15
.end method

.method private generatePageAnimation(FFFFFFF)Landroid/view/animation/Animation;
    .locals 17
    .parameter "fromAlpha"
    .parameter "toAlpha"
    .parameter "fromScale"
    .parameter "toScale"
    .parameter "pivot"
    .parameter "fromTranslate"
    .parameter "toTranslate"

    .prologue
    .line 272
    new-instance v14, Landroid/view/animation/AlphaAnimation;

    #v14=(UninitRef);
    move-object v0, v14

    #v0=(UninitRef);
    move/from16 v1, p1

    #v1=(Float);
    move/from16 v2, p2

    #v2=(Float);
    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 273
    .local v14, alpha:Landroid/view/animation/AlphaAnimation;
    #v0=(Reference);v14=(Reference);
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    #v5=(UninitRef);
    const/4 v10, 0x1

    #v10=(One);
    const/high16 v11, 0x3f00

    #v11=(Integer);
    const/4 v12, 0x0

    #v12=(Null);
    move/from16 v6, p3

    #v6=(Float);
    move/from16 v7, p4

    #v7=(Float);
    move/from16 v8, p3

    #v8=(Float);
    move/from16 v9, p4

    #v9=(Float);
    move/from16 v13, p5

    #v13=(Float);
    invoke-direct/range {v5 .. v13}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 276
    .local v5, scale:Landroid/view/animation/ScaleAnimation;
    #v5=(Reference);
    new-instance v16, Landroid/view/animation/TranslateAnimation;

    #v16=(UninitRef);
    const/4 v6, 0x0

    #v6=(Null);
    const/4 v7, 0x0

    #v7=(Null);
    move-object/from16 v0, v16

    #v0=(UninitRef);
    move v1, v6

    #v1=(Null);
    move v2, v7

    #v2=(Null);
    move/from16 v3, p6

    #v3=(Float);
    move/from16 v4, p7

    #v4=(Float);
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 278
    .local v16, translate:Landroid/view/animation/TranslateAnimation;
    #v0=(Reference);v16=(Reference);
    new-instance v15, Landroid/view/animation/AnimationSet;

    #v15=(UninitRef);
    const/4 v6, 0x1

    #v6=(One);
    invoke-direct {v15, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 279
    .local v15, set:Landroid/view/animation/AnimationSet;
    #v15=(Reference);
    invoke-virtual {v15, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 280
    invoke-virtual {v15, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 281
    invoke-virtual/range {v15 .. v16}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 282
    sget-object v6, Lcom/android/launcher2/gadget/FrequentContacts;->ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    #v6=(Reference);
    invoke-virtual {v15, v6}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 283
    const-wide/16 v6, 0x12c

    #v6=(LongLo);v7=(LongHi);
    invoke-virtual {v15, v6, v7}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 284
    const/4 v6, 0x1

    #v6=(One);
    invoke-virtual {v15, v6}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 286
    return-object v15
.end method

.method private loadContactPhoto(Ljava/lang/Long;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "photoId"

    .prologue
    .line 652
    const/4 v0, 0x0

    .line 654
    .local v0, photo:Landroid/graphics/Bitmap;
    #v0=(Null);
    if-nez p1, :cond_0

    .line 655
    invoke-direct {p0}, Lcom/android/launcher2/gadget/FrequentContacts;->loadDefaultPhoto()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 673
    :goto_0
    #v0=(Reference);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    return-object v0

    .line 658
    :cond_0
    #v0=(Null);v1=(Uninit);v2=(Uninit);v3=(Uninit);
    iget-object v2, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPhotoCache:Ljava/util/HashMap;

    #v2=(Reference);
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 659
    .local v1, softReference:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    .line 660
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    #v2=(LongLo);v3=(LongHi);
    invoke-direct {p0, v2, v3}, Lcom/android/launcher2/gadget/FrequentContacts;->loadContactPhotoFromDatabase(J)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 661
    #v0=(Reference);
    if-nez v0, :cond_2

    .line 662
    invoke-direct {p0}, Lcom/android/launcher2/gadget/FrequentContacts;->loadDefaultPhoto()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 665
    :cond_2
    new-instance v1, Ljava/lang/ref/SoftReference;

    .end local v1           #softReference:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    #v1=(UninitRef);
    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 666
    .restart local v1       #softReference:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    #v1=(Reference);
    iget-object v2, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPhotoCache:Ljava/util/HashMap;

    #v2=(Reference);
    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 669
    :cond_3
    #v0=(Null);v3=(Uninit);
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #photo:Landroid/graphics/Bitmap;
    #v0=(Reference);
    check-cast v0, Landroid/graphics/Bitmap;

    .restart local v0       #photo:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method private loadContactPhotoFromDatabase(J)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "photoId"

    .prologue
    .line 677
    const/4 v7, 0x0

    .line 678
    .local v7, photoCursor:Landroid/database/Cursor;
    #v7=(Null);
    const/4 v6, 0x0

    .line 681
    .local v6, photoBm:Landroid/graphics/Bitmap;
    :try_start_0
    #v6=(Null);
    iget-object v0, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mResolver:Landroid/content/ContentResolver;

    #v0=(Reference);
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    #v1=(Reference);
    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    #v2=(One);
    new-array v2, v2, [Ljava/lang/String;

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    const-string v4, "data15"

    #v4=(Reference);
    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    #v4=(Null);
    const/4 v5, 0x0

    #v5=(Null);
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 686
    #v7=(Reference);
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    const/4 v0, 0x0

    #v0=(Null);
    invoke-interface {v7, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 687
    const/4 v0, 0x0

    #v0=(Null);
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    .line 688
    .local v8, photoData:[B
    #v8=(Reference);
    const/4 v0, 0x0

    array-length v1, v8

    #v1=(Integer);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-static {v8, v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 691
    .end local v8           #photoData:[B
    :cond_0
    #v0=(Boolean);v1=(Conflicted);v2=(Reference);v6=(Reference);v8=(Conflicted);
    if-eqz v7, :cond_1

    .line 692
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 696
    :cond_1
    return-object v6

    .line 691
    :catchall_0
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Null);
    move-exception v0

    #v0=(Reference);
    if-eqz v7, :cond_2

    .line 692
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private loadDefaultPhoto()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 640
    #v4=(Null);
    iget-object v2, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPhotoCache:Ljava/util/HashMap;

    #v2=(Reference);
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 641
    .local v1, softReference:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 642
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/FrequentContacts;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10801cc

    #v3=(Integer);
    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 645
    .local v0, photo:Landroid/graphics/Bitmap;
    #v0=(Reference);
    new-instance v1, Ljava/lang/ref/SoftReference;

    .end local v1           #softReference:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    #v1=(UninitRef);
    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 646
    .restart local v1       #softReference:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    #v1=(Reference);
    iget-object v2, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPhotoCache:Ljava/util/HashMap;

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    .end local v0           #photo:Landroid/graphics/Bitmap;
    :cond_1
    #v0=(Conflicted);v3=(Conflicted);
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0
.end method

.method private prepareAnimations()V
    .locals 12

    .prologue
    .line 186
    const/16 v0, 0x9

    #v0=(PosByte);
    new-array v0, v0, [Landroid/view/animation/Animation;

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mRotateUpAnimations:[Landroid/view/animation/Animation;

    .line 187
    const/16 v0, 0x9

    #v0=(PosByte);
    new-array v0, v0, [Landroid/view/animation/Animation;

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mRotateDownAnimations:[Landroid/view/animation/Animation;

    .line 191
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Integer);v10=(Conflicted);
    const/4 v0, 0x3

    #v0=(PosByte);
    if-ge v9, v0, :cond_0

    .line 192
    iget-object v8, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mRotateUpAnimations:[Landroid/view/animation/Animation;

    #v8=(Reference);
    mul-int/lit8 v10, v9, 0x2

    #v10=(Integer);
    sget-object v0, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_ALPHA_RATIO:[F

    #v0=(Reference);
    add-int/lit8 v1, v9, 0x1

    #v1=(Integer);
    aget v1, v0, v1

    sget-object v0, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_ALPHA_RATIO:[F

    aget v2, v0, v9

    #v2=(Integer);
    sget-object v0, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_SCALE_RATIO:[F

    add-int/lit8 v3, v9, 0x1

    #v3=(Integer);
    aget v0, v0, v3

    #v0=(Integer);
    sget-object v3, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_SCALE_RATIO:[F

    #v3=(Reference);
    aget v3, v3, v9

    #v3=(Integer);
    div-float v3, v0, v3

    #v3=(Float);
    const/high16 v4, 0x3f80

    #v4=(Integer);
    const/high16 v5, 0x3f80

    #v5=(Integer);
    sget-object v0, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_TRANSLATE_RATIO:[F

    #v0=(Reference);
    add-int/lit8 v6, v9, 0x1

    #v6=(Integer);
    aget v0, v0, v6

    #v0=(Integer);
    sget-object v6, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_TRANSLATE_RATIO:[F

    #v6=(Reference);
    aget v6, v6, v9

    #v6=(Integer);
    sub-float v6, v0, v6

    #v6=(Float);
    const/4 v7, 0x0

    #v7=(Null);
    move-object v0, p0

    #v0=(Reference);
    invoke-direct/range {v0 .. v7}, Lcom/android/launcher2/gadget/FrequentContacts;->generateLayerAnimation(FFFFFFF)Landroid/view/animation/Animation;

    move-result-object v0

    aput-object v0, v8, v10

    .line 191
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 199
    :cond_0
    #v0=(PosByte);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v10=(Conflicted);
    const/4 v9, 0x0

    :goto_1
    #v0=(Conflicted);
    const/4 v0, 0x3

    #v0=(PosByte);
    if-ge v9, v0, :cond_1

    .line 200
    iget-object v8, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mRotateDownAnimations:[Landroid/view/animation/Animation;

    #v8=(Reference);
    mul-int/lit8 v10, v9, 0x2

    #v10=(Integer);
    sget-object v0, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_ALPHA_RATIO:[F

    #v0=(Reference);
    aget v1, v0, v9

    #v1=(Integer);
    sget-object v0, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_ALPHA_RATIO:[F

    add-int/lit8 v2, v9, 0x1

    #v2=(Integer);
    aget v2, v0, v2

    const/high16 v3, 0x3f80

    #v3=(Integer);
    sget-object v0, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_SCALE_RATIO:[F

    add-int/lit8 v4, v9, 0x1

    #v4=(Integer);
    aget v0, v0, v4

    #v0=(Integer);
    sget-object v4, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_SCALE_RATIO:[F

    #v4=(Reference);
    aget v4, v4, v9

    #v4=(Integer);
    div-float v4, v0, v4

    #v4=(Float);
    const/high16 v5, 0x3f80

    #v5=(Integer);
    const/4 v6, 0x0

    #v6=(Null);
    sget-object v0, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_TRANSLATE_RATIO:[F

    #v0=(Reference);
    add-int/lit8 v7, v9, 0x1

    #v7=(Integer);
    aget v0, v0, v7

    #v0=(Integer);
    sget-object v7, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_TRANSLATE_RATIO:[F

    #v7=(Reference);
    aget v7, v7, v9

    #v7=(Integer);
    sub-float v7, v0, v7

    #v7=(Float);
    move-object v0, p0

    #v0=(Reference);
    invoke-direct/range {v0 .. v7}, Lcom/android/launcher2/gadget/FrequentContacts;->generateLayerAnimation(FFFFFFF)Landroid/view/animation/Animation;

    move-result-object v0

    aput-object v0, v8, v10

    .line 199
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 207
    :cond_1
    #v0=(PosByte);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v10=(Conflicted);
    const/4 v9, 0x0

    :goto_2
    #v0=(Conflicted);
    const/4 v0, 0x3

    #v0=(PosByte);
    if-ge v9, v0, :cond_2

    .line 208
    iget-object v8, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mRotateUpAnimations:[Landroid/view/animation/Animation;

    #v8=(Reference);
    mul-int/lit8 v0, v9, 0x2

    #v0=(Integer);
    add-int/lit8 v10, v0, 0x1

    #v10=(Integer);
    sget-object v0, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_ALPHA_RATIO:[F

    #v0=(Reference);
    aget v1, v0, v9

    #v1=(Integer);
    sget-object v0, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_ALPHA_RATIO:[F

    add-int/lit8 v2, v9, 0x1

    #v2=(Integer);
    aget v2, v0, v2

    const/high16 v3, 0x3f80

    #v3=(Integer);
    sget-object v0, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_SCALE_RATIO:[F

    add-int/lit8 v4, v9, 0x1

    #v4=(Integer);
    aget v0, v0, v4

    #v0=(Integer);
    sget-object v4, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_SCALE_RATIO:[F

    #v4=(Reference);
    aget v4, v4, v9

    #v4=(Integer);
    div-float v4, v0, v4

    #v4=(Float);
    const/4 v5, 0x0

    #v5=(Null);
    const/4 v6, 0x0

    #v6=(Null);
    sget-object v0, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_TRANSLATE_RATIO:[F

    #v0=(Reference);
    add-int/lit8 v7, v9, 0x1

    #v7=(Integer);
    aget v0, v0, v7

    #v0=(Integer);
    sget-object v7, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_TRANSLATE_RATIO:[F

    #v7=(Reference);
    aget v7, v7, v9

    #v7=(Integer);
    sub-float/2addr v0, v7

    #v0=(Float);
    neg-float v7, v0

    #v7=(Float);
    move-object v0, p0

    #v0=(Reference);
    invoke-direct/range {v0 .. v7}, Lcom/android/launcher2/gadget/FrequentContacts;->generateLayerAnimation(FFFFFFF)Landroid/view/animation/Animation;

    move-result-object v0

    aput-object v0, v8, v10

    .line 207
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 215
    :cond_2
    #v0=(PosByte);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v10=(Conflicted);
    const/4 v9, 0x0

    :goto_3
    #v0=(Conflicted);
    const/4 v0, 0x3

    #v0=(PosByte);
    if-ge v9, v0, :cond_3

    .line 216
    iget-object v8, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mRotateDownAnimations:[Landroid/view/animation/Animation;

    #v8=(Reference);
    mul-int/lit8 v0, v9, 0x2

    #v0=(Integer);
    add-int/lit8 v10, v0, 0x1

    #v10=(Integer);
    sget-object v0, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_ALPHA_RATIO:[F

    #v0=(Reference);
    add-int/lit8 v1, v9, 0x1

    #v1=(Integer);
    aget v1, v0, v1

    sget-object v0, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_ALPHA_RATIO:[F

    aget v2, v0, v9

    #v2=(Integer);
    sget-object v0, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_SCALE_RATIO:[F

    add-int/lit8 v3, v9, 0x1

    #v3=(Integer);
    aget v0, v0, v3

    #v0=(Integer);
    sget-object v3, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_SCALE_RATIO:[F

    #v3=(Reference);
    aget v3, v3, v9

    #v3=(Integer);
    div-float v3, v0, v3

    #v3=(Float);
    const/high16 v4, 0x3f80

    #v4=(Integer);
    const/4 v5, 0x0

    #v5=(Null);
    sget-object v0, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_TRANSLATE_RATIO:[F

    #v0=(Reference);
    add-int/lit8 v6, v9, 0x1

    #v6=(Integer);
    aget v0, v0, v6

    #v0=(Integer);
    sget-object v6, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_TRANSLATE_RATIO:[F

    #v6=(Reference);
    aget v6, v6, v9

    #v6=(Integer);
    sub-float/2addr v0, v6

    #v0=(Float);
    neg-float v6, v0

    #v6=(Float);
    const/4 v7, 0x0

    #v7=(Null);
    move-object v0, p0

    #v0=(Reference);
    invoke-direct/range {v0 .. v7}, Lcom/android/launcher2/gadget/FrequentContacts;->generateLayerAnimation(FFFFFFF)Landroid/view/animation/Animation;

    move-result-object v0

    aput-object v0, v8, v10

    .line 215
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 223
    :cond_3
    #v0=(PosByte);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v10=(Conflicted);
    const/4 v9, 0x3

    .line 224
    #v9=(PosByte);
    sget-object v0, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_SCALE_RATIO:[F

    #v0=(Reference);
    const/4 v1, 0x1

    #v1=(One);
    sub-int v1, v9, v1

    #v1=(Integer);
    aget v0, v0, v1

    #v0=(Integer);
    sget-object v1, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_SCALE_RATIO:[F

    #v1=(Reference);
    aget v1, v1, v9

    #v1=(Integer);
    div-float v4, v0, v1

    .line 225
    .local v4, scaleRatio:F
    #v4=(Float);
    iget-object v8, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mRotateUpAnimations:[Landroid/view/animation/Animation;

    #v8=(Reference);
    mul-int/lit8 v10, v9, 0x2

    #v10=(Integer);
    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    #v2=(Null);
    const/high16 v3, 0x3f80

    #v3=(Integer);
    const/4 v5, 0x0

    #v5=(Null);
    const/4 v6, 0x0

    #v6=(Null);
    sget-object v0, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_TRANSLATE_RATIO:[F

    #v0=(Reference);
    aget v0, v0, v9

    #v0=(Integer);
    sget-object v7, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_TRANSLATE_RATIO:[F

    #v7=(Reference);
    const/4 v11, 0x1

    #v11=(One);
    sub-int v11, v9, v11

    #v11=(Integer);
    aget v7, v7, v11

    #v7=(Integer);
    sub-float/2addr v0, v7

    #v0=(Float);
    neg-float v7, v0

    #v7=(Float);
    move-object v0, p0

    #v0=(Reference);
    invoke-direct/range {v0 .. v7}, Lcom/android/launcher2/gadget/FrequentContacts;->generatePageAnimation(FFFFFFF)Landroid/view/animation/Animation;

    move-result-object v0

    aput-object v0, v8, v10

    .line 229
    iget-object v0, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mRotateDownAnimations:[Landroid/view/animation/Animation;

    mul-int/lit8 v10, v9, 0x2

    sget-object v1, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_ALPHA_RATIO:[F

    #v1=(Reference);
    aget v2, v1, v9

    #v2=(Integer);
    const/high16 v3, 0x3f80

    const/high16 v5, 0x3f80

    #v5=(Integer);
    const/4 v6, 0x0

    sget-object v1, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_TRANSLATE_RATIO:[F

    aget v1, v1, v9

    #v1=(Integer);
    sget-object v7, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_TRANSLATE_RATIO:[F

    #v7=(Reference);
    const/4 v8, 0x1

    #v8=(One);
    sub-int v8, v9, v8

    #v8=(Integer);
    aget v7, v7, v8

    #v7=(Integer);
    sub-float/2addr v1, v7

    #v1=(Float);
    neg-float v7, v1

    #v7=(Float);
    const/4 v8, 0x0

    #v8=(Null);
    move-object v1, p0

    #v1=(Reference);
    invoke-direct/range {v1 .. v8}, Lcom/android/launcher2/gadget/FrequentContacts;->generatePageAnimation(FFFFFFF)Landroid/view/animation/Animation;

    move-result-object v1

    aput-object v1, v0, v10

    .line 233
    iget-object v0, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mRotateDownAnimations:[Landroid/view/animation/Animation;

    mul-int/lit8 v1, v9, 0x2

    #v1=(Integer);
    aget-object v0, v0, v1

    #v0=(Null);
    iget-object v1, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mAnimationListener:Lcom/android/launcher2/gadget/FrequentContacts$AlphaAnimationListener;

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 235
    iget-object v0, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mRotateUpAnimations:[Landroid/view/animation/Animation;

    #v0=(Reference);
    mul-int/lit8 v1, v9, 0x2

    #v1=(Integer);
    add-int/lit8 v10, v1, 0x1

    sget-object v1, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_ALPHA_RATIO:[F

    #v1=(Reference);
    aget v2, v1, v9

    const/high16 v3, 0x3f80

    const/high16 v5, 0x3f80

    iget v1, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPageSize:I

    #v1=(Integer);
    int-to-float v6, v1

    #v6=(Float);
    sget-object v1, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_TRANSLATE_RATIO:[F

    #v1=(Reference);
    aget v1, v1, v9

    #v1=(Integer);
    sget-object v7, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_TRANSLATE_RATIO:[F

    #v7=(Reference);
    const/4 v8, 0x1

    #v8=(One);
    sub-int v8, v9, v8

    #v8=(Integer);
    aget v7, v7, v8

    #v7=(Integer);
    sub-float v7, v1, v7

    #v7=(Float);
    const/4 v8, 0x0

    #v8=(Null);
    move-object v1, p0

    #v1=(Reference);
    invoke-direct/range {v1 .. v8}, Lcom/android/launcher2/gadget/FrequentContacts;->generatePageAnimation(FFFFFFF)Landroid/view/animation/Animation;

    move-result-object v1

    aput-object v1, v0, v10

    .line 239
    iget-object v0, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mRotateUpAnimations:[Landroid/view/animation/Animation;

    mul-int/lit8 v1, v9, 0x2

    #v1=(Integer);
    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    #v0=(Null);
    iget-object v1, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mAnimationListener:Lcom/android/launcher2/gadget/FrequentContacts$AlphaAnimationListener;

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 241
    iget-object v8, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mRotateDownAnimations:[Landroid/view/animation/Animation;

    #v8=(Reference);
    mul-int/lit8 v0, v9, 0x2

    #v0=(Integer);
    add-int/lit8 v10, v0, 0x1

    const/high16 v1, 0x3f80

    #v1=(Integer);
    const/4 v2, 0x0

    #v2=(Null);
    const/high16 v3, 0x3f80

    iget v0, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPageSize:I

    int-to-float v5, v0

    #v5=(Float);
    const/4 v6, 0x0

    #v6=(Null);
    sget-object v0, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_TRANSLATE_RATIO:[F

    #v0=(Reference);
    aget v0, v0, v9

    #v0=(Integer);
    sget-object v7, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_TRANSLATE_RATIO:[F

    #v7=(Reference);
    const/4 v11, 0x1

    #v11=(One);
    sub-int/2addr v9, v11

    #v9=(Integer);
    aget v7, v7, v9

    .end local v9           #i:I
    #v7=(Integer);
    sub-float v7, v0, v7

    #v7=(Float);
    move-object v0, p0

    #v0=(Reference);
    invoke-direct/range {v0 .. v7}, Lcom/android/launcher2/gadget/FrequentContacts;->generatePageAnimation(FFFFFFF)Landroid/view/animation/Animation;

    move-result-object v0

    aput-object v0, v8, v10

    .line 245
    return-void
.end method

.method private queryPrimaryPhoneNumber(J)Ljava/lang/String;
    .locals 11
    .parameter "contactId"

    .prologue
    .line 700
    const/4 v7, 0x0

    .line 703
    .local v7, phone:Ljava/lang/String;
    #v7=(Null);
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    #v0=(Reference);
    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 704
    .local v6, baseUri:Landroid/net/Uri;
    #v6=(Reference);
    const-string v0, "data"

    invoke-static {v6, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 706
    .local v1, dataUri:Landroid/net/Uri;
    #v1=(Reference);
    iget-object v0, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x3

    #v2=(PosByte);
    new-array v2, v2, [Ljava/lang/String;

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    const-string v4, "data1"

    #v4=(Reference);
    aput-object v4, v2, v3

    const/4 v3, 0x1

    #v3=(One);
    const-string v4, "data2"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    #v3=(PosByte);
    const-string v4, "is_super_primary"

    aput-object v4, v2, v3

    const-string v3, "mimetype=\'vnd.android.cursor.item/phone_v2\'"

    #v3=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    const/4 v5, 0x0

    #v5=(Null);
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 711
    .local v9, phonesCursor:Landroid/database/Cursor;
    #v9=(Reference);
    if-nez v9, :cond_0

    move-object v8, v7

    .line 738
    .end local v1           #dataUri:Landroid/net/Uri;
    .end local v7           #phone:Ljava/lang/String;
    .local v8, phone:Ljava/lang/String;
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v7=(Reference);v8=(Reference);v10=(Conflicted);
    return-object v8

    .line 716
    .end local v8           #phone:Ljava/lang/String;
    .restart local v1       #dataUri:Landroid/net/Uri;
    .restart local v7       #phone:Ljava/lang/String;
    :cond_0
    #v0=(Reference);v1=(Reference);v7=(Null);v8=(Uninit);v10=(Uninit);
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    #v0=(Integer);
    if-lez v0, :cond_2

    .line 718
    const/4 v0, 0x0

    #v0=(Null);
    invoke-interface {v9, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 719
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 720
    #v7=(Reference);
    const/4 v0, 0x1

    #v0=(One);
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 723
    .end local v1           #dataUri:Landroid/net/Uri;
    .local v10, type:I
    :cond_1
    :goto_1
    #v0=(Integer);v1=(Conflicted);v10=(Integer);
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_2

    .line 724
    const/4 v0, 0x2

    #v0=(PosByte);
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    #v0=(Integer);
    if-eqz v0, :cond_3

    .line 726
    const/4 v0, 0x0

    #v0=(Null);
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 736
    .end local v10           #type:I
    :cond_2
    #v0=(Integer);v10=(Conflicted);
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    move-object v8, v7

    .line 738
    .end local v7           #phone:Ljava/lang/String;
    .restart local v8       #phone:Ljava/lang/String;
    #v8=(Reference);
    goto :goto_0

    .line 729
    .end local v8           #phone:Ljava/lang/String;
    .restart local v7       #phone:Ljava/lang/String;
    .restart local v10       #type:I
    :cond_3
    #v8=(Uninit);v10=(Integer);
    const/4 v0, 0x2

    #v0=(PosByte);
    if-eq v10, v0, :cond_1

    const/4 v0, 0x1

    #v0=(One);
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    #v0=(Integer);
    const/4 v1, 0x2

    #v1=(PosByte);
    if-ne v0, v1, :cond_1

    .line 731
    const/4 v0, 0x0

    #v0=(Null);
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 732
    const/4 v0, 0x1

    #v0=(One);
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    goto :goto_1
.end method

.method private rebindContactPage(I)V
    .locals 12
    .parameter "index"

    .prologue
    const/4 v11, 0x0

    .line 596
    #v11=(Null);
    if-ltz p1, :cond_0

    iget v8, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mLastPageIndex:I

    #v8=(Integer);
    if-le p1, v8, :cond_1

    .line 637
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    return-void

    .line 598
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Integer);v9=(Uninit);v10=(Uninit);
    rem-int/lit8 v5, p1, 0x3

    .line 599
    .local v5, pageIndex:I
    #v5=(Integer);
    iget-object v8, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPages:[Landroid/widget/FrameLayout;

    #v8=(Reference);
    aget-object v4, v8, v5

    .line 601
    .local v4, page:Landroid/widget/FrameLayout;
    #v4=(Null);
    iget v8, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPageIndexOfOption:I

    #v8=(Integer);
    if-ne v8, v5, :cond_2

    .line 602
    iget-object v8, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mOptions:Landroid/view/View;

    #v8=(Reference);
    invoke-virtual {v4, v8}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 603
    const/4 v8, -0x1

    #v8=(Byte);
    iput v8, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPageIndexOfOption:I

    .line 606
    :cond_2
    #v8=(Integer);
    iget v8, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mCountPerPage:I

    mul-int v2, p1, v8

    .line 607
    .local v2, itemIndex:I
    #v2=(Integer);
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    #v0=(Integer);v1=(Conflicted);v3=(Conflicted);v6=(Conflicted);v7=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    iget v8, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mCountPerPage:I

    if-ge v0, v8, :cond_0

    .line 608
    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 609
    .local v1, item:Landroid/view/View;
    #v1=(Reference);
    iget-object v8, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mContactName:Ljava/util/ArrayList;

    #v8=(Reference);
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    #v8=(Integer);
    if-ge v2, v8, :cond_5

    .line 611
    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 612
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    #v9=(UninitRef);
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/FrequentContacts;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    #v10=(Reference);
    iget-object v8, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mContactPhotoId:Ljava/util/ArrayList;

    #v8=(Reference);
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-direct {p0, v8}, Lcom/android/launcher2/gadget/FrequentContacts;->loadContactPhoto(Ljava/lang/Long;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-direct {v9, v10, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    #v9=(Reference);
    invoke-virtual {v1, v9}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 616
    const v8, 0x7f080006

    #v8=(Integer);
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    #v3=(Reference);
    check-cast v3, Landroid/widget/TextView;

    .line 617
    .local v3, name:Landroid/widget/TextView;
    iget-object v8, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mContactName:Ljava/util/ArrayList;

    #v8=(Reference);
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 618
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 624
    .end local v3           #name:Landroid/widget/TextView;
    :goto_1
    #v3=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    iget-object v8, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mContactName:Ljava/util/ArrayList;

    #v8=(Reference);
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    #v8=(Integer);
    if-ne v2, v8, :cond_4

    .line 625
    iget v8, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPageIndexOfOption:I

    if-ltz v8, :cond_3

    .line 626
    iget-object v8, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mOptions:Landroid/view/View;

    #v8=(Reference);
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    #v7=(Reference);
    check-cast v7, Landroid/view/ViewGroup;

    .line 627
    .local v7, parent:Landroid/view/ViewGroup;
    iget-object v8, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mOptions:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 629
    .end local v7           #parent:Landroid/view/ViewGroup;
    :cond_3
    #v7=(Conflicted);v8=(Conflicted);
    iget-object v8, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mOptions:Landroid/view/View;

    #v8=(Reference);
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v9

    #v9=(Integer);
    const/4 v10, 0x1

    #v10=(One);
    sub-int/2addr v9, v10

    invoke-virtual {v4, v8, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 630
    iput v5, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPageIndexOfOption:I

    .line 632
    iget-object v8, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mOptions:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    #v6=(Reference);
    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 633
    .local v6, params:Landroid/widget/FrameLayout$LayoutParams;
    iget v8, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPageItemSize:I

    #v8=(Integer);
    add-int/lit8 v8, v8, 0x1

    iget v9, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mStyle:I

    rem-int v9, v0, v9

    mul-int/2addr v8, v9

    iput v8, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 634
    iget v8, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPageItemSize:I

    add-int/lit8 v8, v8, 0x1

    iget v9, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mStyle:I

    div-int v9, v0, v9

    mul-int/2addr v8, v9

    iput v8, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 607
    .end local v6           #params:Landroid/widget/FrameLayout$LayoutParams;
    :cond_4
    #v6=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 620
    :cond_5
    const/16 v8, 0x8

    #v8=(PosByte);
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private reloadContacts()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    #v10=(PosByte);
    const/4 v9, 0x2

    #v9=(PosByte);
    const/4 v8, 0x0

    #v8=(Null);
    const/4 v7, 0x1

    .line 562
    #v7=(One);
    iget-object v0, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mContactId:Ljava/util/ArrayList;

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 563
    iget-object v0, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mContactName:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 564
    iget-object v0, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mContactPhotoId:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 565
    iget-object v0, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mContactLookup:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 567
    const/4 v6, 0x0

    .line 569
    .local v6, cursor:Landroid/database/Cursor;
    #v6=(Null);
    iget-object v0, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    #v1=(Reference);
    const/4 v2, 0x4

    #v2=(PosByte);
    new-array v2, v2, [Ljava/lang/String;

    #v2=(Reference);
    const-string v3, "_id"

    #v3=(Reference);
    aput-object v3, v2, v8

    const-string v3, "display_name"

    aput-object v3, v2, v7

    const-string v3, "photo_id"

    aput-object v3, v2, v9

    const-string v3, "lookup"

    aput-object v3, v2, v10

    const-string v3, "starred=1"

    const/4 v4, 0x0

    #v4=(Null);
    const-string v5, "times_contacted DESC"

    #v5=(Reference);
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 575
    #v6=(Reference);
    if-eqz v6, :cond_1

    .line 576
    :goto_0
    #v2=(Conflicted);
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mContactId:Ljava/util/ArrayList;

    #v0=(Reference);
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    #v1=(LongLo);v2=(LongHi);
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    iget-object v0, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mContactName:Ljava/util/ArrayList;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 579
    iget-object v0, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mContactPhotoId:Ljava/util/ArrayList;

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    #v1=(LongLo);
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 580
    iget-object v0, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mContactLookup:Ljava/util/ArrayList;

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 582
    :cond_0
    #v0=(Boolean);v2=(Conflicted);
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 586
    :cond_1
    #v0=(Conflicted);
    iget-object v0, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mContactId:Ljava/util/ArrayList;

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    #v0=(Integer);
    iget v1, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mCountPerPage:I

    #v1=(Integer);
    div-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mLastPageIndex:I

    .line 589
    iget v0, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mCurrentPageIndex:I

    invoke-direct {p0, v0}, Lcom/android/launcher2/gadget/FrequentContacts;->setCurrentPage(I)V

    .line 590
    iget v0, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mCurrentPageIndex:I

    invoke-direct {p0, v0}, Lcom/android/launcher2/gadget/FrequentContacts;->rebindContactPage(I)V

    .line 591
    iget v0, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mCurrentPageIndex:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher2/gadget/FrequentContacts;->rebindContactPage(I)V

    .line 592
    iget v0, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mCurrentPageIndex:I

    sub-int/2addr v0, v7

    invoke-direct {p0, v0}, Lcom/android/launcher2/gadget/FrequentContacts;->rebindContactPage(I)V

    .line 593
    return-void
.end method

.method private rotateToNextPage()V
    .locals 2

    .prologue
    .line 419
    iget v0, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mCurrentPageIndex:I

    #v0=(Integer);
    iget v1, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mLastPageIndex:I

    #v1=(Integer);
    if-ne v0, v1, :cond_0

    .line 423
    :goto_0
    #v0=(Conflicted);
    return-void

    .line 421
    :cond_0
    #v0=(Integer);
    iget v0, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mCurrentPageIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mNextPageIndex:I

    .line 422
    const/4 v0, 0x0

    #v0=(Null);
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    #v0=(Reference);
    invoke-direct {p0, v0}, Lcom/android/launcher2/gadget/FrequentContacts;->startRotateAnimation(Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method private rotateToPreviousPage()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 412
    #v1=(One);
    iget v0, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mCurrentPageIndex:I

    #v0=(Integer);
    if-nez v0, :cond_0

    .line 416
    :goto_0
    #v0=(Conflicted);
    return-void

    .line 414
    :cond_0
    #v0=(Integer);
    iget v0, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mCurrentPageIndex:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mNextPageIndex:I

    .line 415
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    #v0=(Reference);
    invoke-direct {p0, v0}, Lcom/android/launcher2/gadget/FrequentContacts;->startRotateAnimation(Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method private setCurrentPage(I)V
    .locals 8
    .parameter "index"

    .prologue
    const/4 v4, 0x1

    #v4=(One);
    const/16 v7, 0x8

    #v7=(PosByte);
    const/4 v6, 0x3

    #v6=(PosByte);
    const/4 v5, 0x0

    .line 426
    #v5=(Null);
    iget v3, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mLastPageIndex:I

    #v3=(Integer);
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 427
    iget v3, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mCurrentPageIndex:I

    if-ne v3, p1, :cond_1

    .line 449
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(PosByte);
    return-void

    .line 429
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Integer);v4=(One);
    iput p1, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mCurrentPageIndex:I

    .line 432
    sub-int v3, v6, p1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 433
    .local v2, upperVisibleIndex:I
    #v2=(Integer);
    iget v3, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mLastPageIndex:I

    sub-int/2addr v3, p1

    sub-int v3, v6, v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 434
    .local v1, lowerVisibleIndex:I
    #v1=(Integer);
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    #v0=(Integer);v3=(Conflicted);v4=(PosByte);
    if-ge v0, v6, :cond_4

    .line 435
    mul-int/lit8 v3, v0, 0x2

    #v3=(Integer);
    invoke-virtual {p0, v3}, Lcom/android/launcher2/gadget/FrequentContacts;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    #v3=(Reference);
    if-ge v0, v2, :cond_2

    move v4, v7

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 436
    mul-int/lit8 v3, v0, 0x2

    #v3=(Integer);
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/launcher2/gadget/FrequentContacts;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    #v3=(Reference);
    if-ge v0, v1, :cond_3

    move v4, v7

    :goto_2
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 434
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v4, v5

    .line 435
    #v4=(Null);
    goto :goto_1

    :cond_3
    #v4=(PosByte);
    move v4, v5

    .line 436
    #v4=(Null);
    goto :goto_2

    .line 440
    :cond_4
    #v3=(Conflicted);v4=(PosByte);
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v6, :cond_0

    .line 441
    iget v3, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mCurrentPageIndex:I

    #v3=(Integer);
    rem-int/lit8 v3, v3, 0x3

    if-ne v3, v0, :cond_5

    .line 442
    iget-object v3, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPages:[Landroid/widget/FrameLayout;

    #v3=(Reference);
    aget-object v3, v3, v0

    #v3=(Null);
    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 440
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 445
    :cond_5
    #v3=(Integer);
    iget-object v3, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPages:[Landroid/widget/FrameLayout;

    #v3=(Reference);
    aget-object v3, v3, v0

    #v3=(Null);
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->clearAnimation()V

    .line 446
    iget-object v3, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPages:[Landroid/widget/FrameLayout;

    #v3=(Reference);
    aget-object v3, v3, v0

    #v3=(Null);
    invoke-virtual {v3, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_4
.end method

.method private setStyle(I)V
    .locals 14
    .parameter "style"

    .prologue
    .line 485
    const/4 v9, 0x2

    #v9=(PosByte);
    if-eq p1, v9, :cond_0

    const/4 v9, 0x3

    if-eq p1, v9, :cond_0

    .line 486
    const/4 p1, 0x2

    .line 489
    :cond_0
    iget v9, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mStyle:I

    #v9=(Integer);
    if-ne v9, p1, :cond_1

    .line 559
    .end local p0
    .end local p1
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);p1=(Conflicted);
    return-void

    .line 492
    .restart local p0
    .restart local p1
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);p1=(Integer);
    iput p1, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mStyle:I

    .line 493
    iget-object v9, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mContext:Landroid/content/Context;

    #v9=(Reference);
    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 494
    .local v7, pref:Landroid/content/SharedPreferences;
    #v7=(Reference);
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 495
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    #v0=(Reference);
    const-string v9, "gadget_contact_style_preference"

    iget v10, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mStyle:I

    #v10=(Integer);
    invoke-interface {v0, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 496
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 498
    iget v9, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mStyle:I

    #v9=(Integer);
    iget v10, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mStyle:I

    mul-int/2addr v9, v10

    iput v9, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mCountPerPage:I

    .line 499
    iget-object v9, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mContactId:Ljava/util/ArrayList;

    #v9=(Reference);
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    #v9=(Integer);
    iget v10, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mCountPerPage:I

    div-int/2addr v9, v10

    iput v9, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mLastPageIndex:I

    .line 500
    iget v9, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPageContentSize:I

    iget v10, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mStyle:I

    div-int/2addr v9, v10

    iput v9, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPageItemSize:I

    .line 504
    const/4 v5, 0x0

    .local v5, pageIndex:I
    :goto_1
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Integer);v6=(Conflicted);v11=(Conflicted);v12=(Conflicted);
    const/4 v9, 0x3

    #v9=(PosByte);
    if-ge v5, v9, :cond_3

    .line 505
    iget-object v9, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPages:[Landroid/widget/FrameLayout;

    #v9=(Reference);
    aget-object v9, v9, v5

    #v9=(Null);
    invoke-virtual {v9}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 506
    const/4 v3, 0x0

    .local v3, itemIndex:I
    :goto_2
    #v3=(Integer);v9=(Integer);
    iget v9, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mCountPerPage:I

    if-ge v3, v9, :cond_2

    .line 507
    iget-object v9, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mContext:Landroid/content/Context;

    #v9=(Reference);
    const v10, 0x7f030009

    const/4 v11, 0x0

    #v11=(Null);
    invoke-static {v9, v10, v11}, Lcom/android/launcher2/gadget/FrequentContacts;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Landroid/widget/FrameLayout;

    .line 508
    .local v2, item:Landroid/widget/FrameLayout;
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 509
    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 510
    iget-object v9, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPages:[Landroid/widget/FrameLayout;

    aget-object v9, v9, v5

    #v9=(Null);
    invoke-virtual {v9, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 512
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    #v6=(Reference);
    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 513
    .local v6, params:Landroid/widget/FrameLayout$LayoutParams;
    iget v9, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPageItemSize:I

    #v9=(Integer);
    iput v9, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 514
    iget v9, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPageItemSize:I

    iput v9, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 515
    iget v9, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPageItemSize:I

    add-int/lit8 v9, v9, 0x1

    iget v10, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mStyle:I

    rem-int v10, v3, v10

    mul-int/2addr v9, v10

    iput v9, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 516
    iget v9, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPageItemSize:I

    add-int/lit8 v9, v9, 0x1

    iget v10, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mStyle:I

    div-int v10, v3, v10

    mul-int/2addr v9, v10

    iput v9, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 517
    const/16 v9, 0x33

    #v9=(PosByte);
    iput v9, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 519
    const/4 v9, 0x0

    #v9=(Null);
    invoke-virtual {v2, v9}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    #v4=(Reference);
    check-cast v4, Landroid/widget/TextView;

    .line 520
    .local v4, name:Landroid/widget/TextView;
    iget v9, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPageItemSize:I

    #v9=(Integer);
    div-int/lit8 v9, v9, 0xa

    int-to-float v9, v9

    #v9=(Float);
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 521
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    #v9=(Reference);
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 522
    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 523
    iget v9, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPageItemSize:I

    #v9=(Integer);
    div-int/lit8 v9, v9, 0x14

    const/4 v10, 0x0

    #v10=(Null);
    iget v11, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPageItemSize:I

    #v11=(Integer);
    div-int/lit8 v11, v11, 0x14

    const/4 v12, 0x0

    #v12=(Null);
    invoke-virtual {v4, v9, v10, v11, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 525
    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .end local v6           #params:Landroid/widget/FrameLayout$LayoutParams;
    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 526
    .restart local v6       #params:Landroid/widget/FrameLayout$LayoutParams;
    iget v9, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPageItemSize:I

    div-int/lit8 v9, v9, 0x4

    iput v9, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 506
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 529
    .end local v2           #item:Landroid/widget/FrameLayout;
    .end local v4           #name:Landroid/widget/TextView;
    .end local v6           #params:Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    #v2=(Conflicted);v4=(Conflicted);v6=(Conflicted);v10=(Integer);v11=(Conflicted);v12=(Conflicted);
    new-instance v1, Landroid/view/View;

    #v1=(UninitRef);
    iget-object v9, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mContext:Landroid/content/Context;

    #v9=(Reference);
    invoke-direct {v1, v9}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 530
    .local v1, frame:Landroid/view/View;
    #v1=(Reference);
    const v9, 0x7f020027

    #v9=(Integer);
    invoke-virtual {v1, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 531
    iget-object v9, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPages:[Landroid/widget/FrameLayout;

    #v9=(Reference);
    aget-object v9, v9, v5

    #v9=(Null);
    invoke-virtual {v9, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 532
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    #v6=(Reference);
    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 533
    .restart local v6       #params:Landroid/widget/FrameLayout$LayoutParams;
    iget v9, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPageContentSize:I

    #v9=(Integer);
    iput v9, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 534
    iget v9, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPageContentSize:I

    iput v9, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 535
    const/16 v9, 0x11

    #v9=(PosByte);
    iput v9, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 504
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 539
    .end local v1           #frame:Landroid/view/View;
    .end local v3           #itemIndex:I
    .end local v6           #params:Landroid/widget/FrameLayout$LayoutParams;
    :cond_3
    #v1=(Conflicted);v3=(Conflicted);v6=(Conflicted);
    iget-object v9, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mOptions:Landroid/view/View;

    #v9=(Reference);
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    #v6=(Reference);
    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 540
    .restart local v6       #params:Landroid/widget/FrameLayout$LayoutParams;
    iget v9, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPageItemSize:I

    #v9=(Integer);
    iput v9, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 541
    iget v9, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPageItemSize:I

    iput v9, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 543
    iget v9, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPageItemSize:I

    mul-int/lit8 v9, v9, 0x3

    div-int/lit8 v8, v9, 0x14

    .line 544
    .local v8, widthMargin:I
    #v8=(Integer);
    const/4 v9, -0x1

    #v9=(Byte);
    iput v9, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPageIndexOfOption:I

    .line 545
    iget-object v9, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mOptionEdit:Landroid/widget/TextView;

    #v9=(Reference);
    iget v10, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mStyle:I

    const/4 v11, 0x2

    #v11=(PosByte);
    if-ne v10, v11, :cond_4

    const v10, 0x7f02001e

    :goto_3
    const/4 v11, 0x0

    #v11=(Null);
    const/4 v12, 0x0

    #v12=(Null);
    const/4 v13, 0x0

    #v13=(Null);
    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 550
    iget-object v9, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mOptionEdit:Landroid/widget/TextView;

    iget v10, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPageItemSize:I

    div-int/lit8 v10, v10, 0x9

    int-to-float v10, v10

    #v10=(Float);
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 551
    iget-object v9, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mOptionEdit:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .end local p1
    #p1=(Reference);
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v9, 0x0

    #v9=(Null);
    const/4 v10, 0x0

    #v10=(Null);
    invoke-virtual {p1, v8, v9, v8, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 552
    iget-object v9, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mOptionStyle:Landroid/widget/TextView;

    #v9=(Reference);
    iget v10, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mStyle:I

    #v10=(Integer);
    const/4 v11, 0x2

    #v11=(PosByte);
    if-ne v10, v11, :cond_5

    const v10, 0x7f020028

    :goto_4
    const/4 v11, 0x0

    #v11=(Null);
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 557
    iget-object v9, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mOptionStyle:Landroid/widget/TextView;

    iget v10, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPageItemSize:I

    div-int/lit8 v10, v10, 0x9

    int-to-float v10, v10

    #v10=(Float);
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 558
    iget-object v9, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mOptionStyle:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v9, 0x0

    #v9=(Null);
    const/4 v10, 0x0

    #v10=(Null);
    invoke-virtual {p0, v8, v9, v8, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto/16 :goto_0

    .line 545
    .restart local p0
    .restart local p1
    :cond_4
    #v9=(Reference);v10=(Integer);v11=(PosByte);v12=(Conflicted);v13=(Uninit);p1=(Integer);
    const v10, 0x7f02001f

    goto :goto_3

    .line 552
    .end local p1
    :cond_5
    #v12=(Null);v13=(Null);p1=(Reference);
    const v10, 0x7f020029

    goto :goto_4
.end method

.method private setupViews()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    #v12=(PosByte);
    const/4 v11, 0x0

    #v11=(Null);
    const/4 v10, -0x2

    #v10=(Byte);
    const/4 v9, 0x1

    .line 134
    #v9=(One);
    invoke-virtual {p0, v9}, Lcom/android/launcher2/gadget/FrequentContacts;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 137
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    #v0=(Integer);v1=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    const/4 v6, 0x6

    #v6=(PosByte);
    if-ge v0, v6, :cond_0

    .line 138
    new-instance v1, Landroid/widget/ImageView;

    #v1=(UninitRef);
    iget-object v6, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mContext:Landroid/content/Context;

    #v6=(Reference);
    invoke-direct {v1, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 139
    .local v1, layer:Landroid/widget/ImageView;
    #v1=(Reference);
    sget-object v6, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_RESOURCE_ID:[I

    aget v6, v6, v0

    #v6=(Integer);
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 140
    const/high16 v6, 0x437f

    sget-object v7, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_ALPHA_RATIO:[F

    #v7=(Reference);
    div-int/lit8 v8, v0, 0x2

    #v8=(Integer);
    aget v7, v7, v8

    #v7=(Integer);
    mul-float/2addr v6, v7

    #v6=(Float);
    float-to-int v6, v6

    #v6=(Integer);
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 141
    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    #v6=(Reference);
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 142
    sget-object v6, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v1, v6}, Lcom/android/launcher2/gadget/FrequentContacts;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    .end local v1           #layer:Landroid/widget/ImageView;
    :cond_0
    #v1=(Conflicted);v6=(PosByte);v7=(Conflicted);v8=(Conflicted);
    invoke-virtual {p0}, Lcom/android/launcher2/gadget/FrequentContacts;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    #v6=(Reference);
    const v7, 0x7f020026

    #v7=(Integer);
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    #v3=(Reference);
    check-cast v3, Landroid/graphics/drawable/NinePatchDrawable;

    .line 148
    .local v3, pageBackground:Landroid/graphics/drawable/NinePatchDrawable;
    new-instance v2, Landroid/graphics/Rect;

    #v2=(UninitRef);
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 149
    .local v2, padding:Landroid/graphics/Rect;
    #v2=(Reference);
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/NinePatchDrawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 150
    iget v6, v2, Landroid/graphics/Rect;->top:I

    #v6=(Integer);
    iput v6, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPageBorderSize:I

    .line 151
    invoke-virtual {v3}, Landroid/graphics/drawable/NinePatchDrawable;->getIntrinsicHeight()I

    move-result v6

    iget v7, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPageContentSize:I

    .line 152
    iget v6, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPageContentSize:I

    iget v7, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPageBorderSize:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iput v6, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPageSize:I

    .line 155
    new-array v6, v12, [Landroid/widget/FrameLayout;

    #v6=(Reference);
    iput-object v6, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPages:[Landroid/widget/FrameLayout;

    .line 156
    const/4 v0, 0x0

    :goto_1
    #v7=(Conflicted);
    if-ge v0, v12, :cond_1

    .line 157
    iget-object v6, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPages:[Landroid/widget/FrameLayout;

    new-instance v7, Landroid/widget/FrameLayout;

    #v7=(UninitRef);
    iget-object v8, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mContext:Landroid/content/Context;

    #v8=(Reference);
    invoke-direct {v7, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    #v7=(Reference);
    aput-object v7, v6, v0

    .line 158
    iget-object v6, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPages:[Landroid/widget/FrameLayout;

    aget-object v6, v6, v0

    #v6=(Null);
    invoke-virtual {v6, v3}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 159
    iget-object v6, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPages:[Landroid/widget/FrameLayout;

    #v6=(Reference);
    aget-object v6, v6, v0

    #v6=(Null);
    invoke-virtual {v6, v9}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 160
    iget-object v6, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPages:[Landroid/widget/FrameLayout;

    #v6=(Reference);
    aget-object v6, v6, v0

    #v6=(Null);
    invoke-virtual {v6, v9}, Landroid/widget/FrameLayout;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 161
    iget-object v6, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPages:[Landroid/widget/FrameLayout;

    #v6=(Reference);
    aget-object v6, v6, v0

    #v6=(Null);
    sget-object v7, Lcom/android/launcher2/gadget/FrequentContacts;->LAYER_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v6, v7}, Lcom/android/launcher2/gadget/FrequentContacts;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 165
    :cond_1
    #v6=(Reference);v7=(Conflicted);v8=(Conflicted);
    new-instance v6, Landroid/widget/ImageView;

    #v6=(UninitRef);
    iget-object v7, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mContext:Landroid/content/Context;

    #v7=(Reference);
    invoke-direct {v6, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    #v6=(Reference);
    iput-object v6, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mLightEffect:Landroid/widget/ImageView;

    .line 166
    iget-object v6, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mLightEffect:Landroid/widget/ImageView;

    const v7, 0x7f020021

    #v7=(Integer);
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 167
    iget-object v6, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mLightEffect:Landroid/widget/ImageView;

    invoke-virtual {p0, v6}, Lcom/android/launcher2/gadget/FrequentContacts;->addView(Landroid/view/View;)V

    .line 168
    iget-object v6, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mLightEffect:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    #v4=(Reference);
    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 169
    .local v4, params:Landroid/widget/FrameLayout$LayoutParams;
    iput v10, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 170
    iput v10, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 173
    iget-object v6, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mContext:Landroid/content/Context;

    const v7, 0x7f03000a

    const/4 v8, 0x0

    #v8=(Null);
    invoke-static {v6, v7, v8}, Lcom/android/launcher2/gadget/FrequentContacts;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mOptions:Landroid/view/View;

    .line 174
    iget-object v6, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mOptions:Landroid/view/View;

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    #v7=(UninitRef);
    const/16 v8, 0x33

    #v8=(PosByte);
    invoke-direct {v7, v11, v11, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    #v7=(Reference);
    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    iget-object v6, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mOptions:Landroid/view/View;

    const v7, 0x7f080013

    #v7=(Integer);
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mOptionEdit:Landroid/widget/TextView;

    .line 176
    iget-object v6, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mOptionEdit:Landroid/widget/TextView;

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object v6, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mOptions:Landroid/view/View;

    const v7, 0x7f080014

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mOptionStyle:Landroid/widget/TextView;

    .line 178
    iget-object v6, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mOptionStyle:Landroid/widget/TextView;

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v6, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 182
    .local v5, pref:Landroid/content/SharedPreferences;
    #v5=(Reference);
    const-string v6, "gadget_contact_style_preference"

    const/4 v7, 0x2

    #v7=(PosByte);
    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    #v6=(Integer);
    invoke-direct {p0, v6}, Lcom/android/launcher2/gadget/FrequentContacts;->setStyle(I)V

    .line 183
    return-void
.end method

.method private startRotateAnimation(Ljava/lang/Boolean;)V
    .locals 11
    .parameter "down"

    .prologue
    const/16 v10, 0xff

    #v10=(PosShort);
    const/4 v9, 0x7

    #v9=(PosByte);
    const/4 v8, 0x6

    #v8=(PosByte);
    const/4 v7, 0x3

    #v7=(PosByte);
    const/4 v6, 0x0

    .line 452
    #v6=(Null);
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mCurrentPageIndex:I

    :goto_0
    #v4=(Integer);
    sub-int v4, v7, v4

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 453
    .local v3, upperVisibleIndex:I
    #v3=(Integer);
    iget v4, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mLastPageIndex:I

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_3

    iget v5, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mNextPageIndex:I

    :goto_1
    #v5=(Integer);
    sub-int/2addr v4, v5

    sub-int v4, v7, v4

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 456
    .local v2, lowerVisibleIndex:I
    #v2=(Integer);
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    #v0=(Integer);v1=(Conflicted);
    if-ge v0, v7, :cond_6

    .line 457
    if-lt v0, v3, :cond_0

    .line 458
    mul-int/lit8 v4, v0, 0x2

    invoke-virtual {p0, v4}, Lcom/android/launcher2/gadget/FrequentContacts;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Landroid/widget/ImageView;

    .line 459
    .local v1, layer:Landroid/widget/ImageView;
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 460
    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 461
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mRotateDownAnimations:[Landroid/view/animation/Animation;

    #v4=(Reference);
    mul-int/lit8 v5, v0, 0x2

    aget-object v4, v4, v5

    :goto_3
    #v4=(Null);
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 464
    .end local v1           #layer:Landroid/widget/ImageView;
    :cond_0
    #v1=(Conflicted);v4=(Integer);
    if-lt v0, v2, :cond_1

    .line 465
    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/launcher2/gadget/FrequentContacts;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Landroid/widget/ImageView;

    .line 466
    .restart local v1       #layer:Landroid/widget/ImageView;
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 467
    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 468
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mRotateDownAnimations:[Landroid/view/animation/Animation;

    #v4=(Reference);
    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-object v4, v4, v5

    :goto_4
    #v4=(Null);
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 456
    .end local v1           #layer:Landroid/widget/ImageView;
    :cond_1
    #v1=(Conflicted);v4=(Integer);
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 452
    .end local v0           #i:I
    .end local v2           #lowerVisibleIndex:I
    .end local v3           #upperVisibleIndex:I
    :cond_2
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Boolean);v5=(Uninit);
    iget v4, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mNextPageIndex:I

    #v4=(Integer);
    goto :goto_0

    .line 453
    .restart local v3       #upperVisibleIndex:I
    :cond_3
    #v3=(Integer);v5=(Boolean);
    iget v5, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mCurrentPageIndex:I

    #v5=(Integer);
    goto :goto_1

    .line 461
    .restart local v0       #i:I
    .restart local v1       #layer:Landroid/widget/ImageView;
    .restart local v2       #lowerVisibleIndex:I
    :cond_4
    #v0=(Integer);v1=(Reference);v2=(Integer);v4=(Boolean);
    iget-object v4, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mRotateUpAnimations:[Landroid/view/animation/Animation;

    #v4=(Reference);
    mul-int/lit8 v5, v0, 0x2

    aget-object v4, v4, v5

    #v4=(Null);
    goto :goto_3

    .line 468
    :cond_5
    #v4=(Boolean);
    iget-object v4, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mRotateUpAnimations:[Landroid/view/animation/Animation;

    #v4=(Reference);
    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-object v4, v4, v5

    #v4=(Null);
    goto :goto_4

    .line 473
    .end local v1           #layer:Landroid/widget/ImageView;
    :cond_6
    #v1=(Conflicted);v4=(Integer);
    iget-object v4, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPages:[Landroid/widget/FrameLayout;

    #v4=(Reference);
    iget v5, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mNextPageIndex:I

    rem-int/lit8 v5, v5, 0x3

    aget-object v4, v4, v5

    #v4=(Null);
    const/16 v5, 0x8

    #v5=(PosByte);
    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 474
    iget-object v4, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPages:[Landroid/widget/FrameLayout;

    #v4=(Reference);
    iget v5, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mCurrentPageIndex:I

    #v5=(Integer);
    rem-int/lit8 v5, v5, 0x3

    aget-object v4, v4, v5

    #v4=(Null);
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mRotateDownAnimations:[Landroid/view/animation/Animation;

    #v5=(Reference);
    aget-object v5, v5, v9

    :goto_5
    #v5=(Null);
    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 478
    iget-object v4, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPages:[Landroid/widget/FrameLayout;

    #v4=(Reference);
    iget v5, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mNextPageIndex:I

    #v5=(Integer);
    rem-int/lit8 v5, v5, 0x3

    aget-object v4, v4, v5

    #v4=(Null);
    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 479
    iget-object v4, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPages:[Landroid/widget/FrameLayout;

    #v4=(Reference);
    iget v5, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mNextPageIndex:I

    rem-int/lit8 v5, v5, 0x3

    aget-object v4, v4, v5

    #v4=(Null);
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mRotateDownAnimations:[Landroid/view/animation/Animation;

    #v5=(Reference);
    aget-object v5, v5, v8

    :goto_6
    #v5=(Null);
    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 482
    return-void

    .line 474
    :cond_7
    #v5=(Boolean);
    iget-object v5, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mRotateUpAnimations:[Landroid/view/animation/Animation;

    #v5=(Reference);
    aget-object v5, v5, v8

    #v5=(Null);
    goto :goto_5

    .line 479
    :cond_8
    #v5=(Boolean);
    iget-object v5, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mRotateUpAnimations:[Landroid/view/animation/Animation;

    #v5=(Reference);
    aget-object v5, v5, v9

    #v5=(Null);
    goto :goto_6
.end method


# virtual methods
.method onCall(I)V
    .locals 5
    .parameter "index"

    .prologue
    .line 398
    iget-object v2, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mContactId:Ljava/util/ArrayList;

    #v2=(Reference);
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    #v2=(LongLo);v3=(LongHi);
    invoke-direct {p0, v2, v3}, Lcom/android/launcher2/gadget/FrequentContacts;->queryPrimaryPhoneNumber(J)Ljava/lang/String;

    move-result-object v1

    .line 399
    .local v1, phoneNumber:Ljava/lang/String;
    #v1=(Reference);
    new-instance v0, Landroid/content/Intent;

    #v0=(UninitRef);
    const-string v2, "android.intent.action.CALL"

    #v2=(Reference);
    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef);
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #v3=(Reference);
    const-string v4, "tel:"

    #v4=(Reference);
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 400
    .local v0, intent:Landroid/content/Intent;
    #v0=(Reference);
    const/high16 v2, 0x1000

    #v2=(Integer);
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 401
    iget-object v2, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mContext:Landroid/content/Context;

    #v2=(Reference);
    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 402
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v2, 0x2

    .line 374
    #v2=(PosByte);
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    #v1=(Integer);
    sparse-switch v1, :sswitch_data_0

    .line 395
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Integer);v3=(Conflicted);
    return-void

    .line 376
    :sswitch_0
    #v0=(Uninit);v1=(Integer);v2=(PosByte);v3=(Uninit);
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    #v1=(Integer);
    iget v2, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mCountPerPage:I

    #v2=(Integer);
    iget v3, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mCurrentPageIndex:I

    #v3=(Integer);
    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/android/launcher2/gadget/FrequentContacts;->onView(I)V

    goto :goto_0

    .line 380
    :sswitch_1
    #v2=(PosByte);v3=(Uninit);
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    #v1=(Integer);
    iget v2, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mCountPerPage:I

    #v2=(Integer);
    iget v3, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mCurrentPageIndex:I

    #v3=(Integer);
    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/android/launcher2/gadget/FrequentContacts;->onCall(I)V

    goto :goto_0

    .line 384
    :sswitch_2
    #v2=(PosByte);v3=(Uninit);
    new-instance v0, Landroid/content/Intent;

    #v0=(UninitRef);
    const-string v1, "com.android.contacts.action.PICK_FAVORITE"

    #v1=(Reference);
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 385
    .local v0, intent:Landroid/content/Intent;
    #v0=(Reference);
    iget-object v1, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 389
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_3
    #v0=(Uninit);v1=(Integer);
    iget v1, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mStyle:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x3

    :goto_1
    #v1=(PosByte);
    invoke-direct {p0, v1}, Lcom/android/launcher2/gadget/FrequentContacts;->setStyle(I)V

    .line 390
    iget v1, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mLastPageIndex:I

    #v1=(Integer);
    invoke-direct {p0, v1}, Lcom/android/launcher2/gadget/FrequentContacts;->setCurrentPage(I)V

    .line 391
    iget v1, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mLastPageIndex:I

    invoke-direct {p0, v1}, Lcom/android/launcher2/gadget/FrequentContacts;->rebindContactPage(I)V

    .line 392
    iget v1, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mLastPageIndex:I

    const/4 v2, 0x1

    #v2=(One);
    sub-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/android/launcher2/gadget/FrequentContacts;->rebindContactPage(I)V

    goto :goto_0

    :cond_0
    #v2=(PosByte);
    move v1, v2

    .line 389
    #v1=(PosByte);
    goto :goto_1

    .line 374
    :sswitch_data_0
    .sparse-switch
        0x7f080006 -> :sswitch_1
        0x7f080012 -> :sswitch_0
        0x7f080013 -> :sswitch_2
        0x7f080014 -> :sswitch_3
    .end sparse-switch
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 771
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 336
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    #v0=(Integer);
    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 349
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_1
    #v0=(Boolean);
    return v0

    .line 338
    :pswitch_1
    #v0=(Integer);
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    #v0=(Float);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/gadget/FrequentContacts;->rotateIfNeeded(F)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 339
    const/4 v0, 0x1

    #v0=(One);
    goto :goto_1

    .line 345
    :pswitch_2
    #v0=(Integer);
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    #v0=(Float);
    iput v0, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mLastDownY:F

    goto :goto_0

    .line 336
    #v0=(Unknown);p0=(Unknown);p1=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 13
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 291
    sub-int v6, p4, p2

    .line 292
    .local v6, width:I
    #v6=(Integer);
    sub-int v7, p5, p3

    #v7=(Integer);
    const/16 v8, 0x32

    #v8=(PosByte);
    sub-int v0, v7, v8

    .line 294
    .local v0, height:I
    #v0=(Integer);
    iget v7, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPageSize:I

    sub-int v7, v6, v7

    div-int/lit8 v4, v7, 0x2

    .line 295
    .local v4, paddingWidth:I
    #v4=(Integer);
    iget v7, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPageSize:I

    sub-int v7, v0, v7

    div-int/lit8 v3, v7, 0x2

    .line 298
    .local v3, paddingHeight:I
    #v3=(Integer);
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    #v1=(Integer);v8=(Integer);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);
    const/4 v7, 0x3

    #v7=(PosByte);
    if-ge v1, v7, :cond_0

    .line 299
    iget-object v7, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPages:[Landroid/widget/FrameLayout;

    #v7=(Reference);
    aget-object v7, v7, v1

    #v7=(Null);
    add-int/lit8 v8, v4, 0x0

    add-int/lit8 v9, v3, 0x0

    #v9=(Integer);
    sub-int v10, v6, v4

    #v10=(Integer);
    add-int/lit8 v11, v3, 0x0

    #v11=(Integer);
    iget-object v12, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPages:[Landroid/widget/FrameLayout;

    #v12=(Reference);
    aget-object v12, v12, v1

    #v12=(Null);
    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    #v12=(Reference);
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    #v12=(Integer);
    add-int/2addr v11, v12

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 298
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 307
    :cond_0
    #v7=(PosByte);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);
    iget v7, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mPageBorderSize:I

    #v7=(Integer);
    add-int/2addr v3, v7

    .line 308
    const/4 v1, 0x2

    :goto_1
    #v2=(Conflicted);v5=(Conflicted);
    if-ltz v1, :cond_1

    .line 309
    mul-int/lit8 v7, v1, 0x2

    invoke-virtual {p0, v7}, Lcom/android/launcher2/gadget/FrequentContacts;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 310
    .local v5, upperLayer:Landroid/view/View;
    #v5=(Reference);
    add-int/lit8 v7, v4, 0x0

    add-int/lit8 v8, v3, 0x0

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    #v9=(Integer);
    sub-int/2addr v8, v9

    sub-int v9, v6, v4

    add-int/lit8 v10, v3, 0x0

    #v10=(Integer);
    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 316
    mul-int/lit8 v7, v1, 0x2

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {p0, v7}, Lcom/android/launcher2/gadget/FrequentContacts;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 317
    .local v2, lowerLayer:Landroid/view/View;
    #v2=(Reference);
    add-int/lit8 v7, v4, 0x0

    sub-int v8, v0, v3

    sub-int v9, v6, v4

    sub-int v10, v0, v3

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    #v11=(Integer);
    add-int/2addr v10, v11

    invoke-virtual {v2, v7, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 308
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 325
    .end local v2           #lowerLayer:Landroid/view/View;
    .end local v5           #upperLayer:Landroid/view/View;
    :cond_1
    #v2=(Conflicted);v5=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);
    iget-object v7, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mLightEffect:Landroid/widget/ImageView;

    #v7=(Reference);
    invoke-virtual {v7}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v7

    #v7=(Integer);
    sub-int v7, v6, v7

    div-int/lit8 v4, v7, 0x2

    .line 326
    const/4 v3, 0x0

    .line 327
    #v3=(Null);
    iget-object v7, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mLightEffect:Landroid/widget/ImageView;

    #v7=(Reference);
    iget-object v8, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mLightEffect:Landroid/widget/ImageView;

    #v8=(Reference);
    invoke-virtual {v8}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v8

    #v8=(Integer);
    sub-int v8, v0, v8

    sub-int/2addr v8, v3

    sub-int v9, v6, v4

    #v9=(Integer);
    sub-int v10, v0, v3

    #v10=(Integer);
    invoke-virtual {v7, v4, v8, v9, v10}, Landroid/widget/ImageView;->layout(IIII)V

    .line 332
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 776
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 780
    invoke-direct {p0}, Lcom/android/launcher2/gadget/FrequentContacts;->reloadContacts()V

    .line 781
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 367
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    #v0=(Integer);
    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x2

    #v1=(PosByte);
    if-ne v0, v1, :cond_0

    .line 368
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    #v0=(Float);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/gadget/FrequentContacts;->rotateIfNeeded(F)Z

    .line 370
    :cond_0
    #v0=(Integer);
    const/4 v0, 0x1

    #v0=(One);
    return v0
.end method

.method onView(I)V
    .locals 5
    .parameter "index"

    .prologue
    .line 405
    iget-object v3, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mContactLookup:Ljava/util/ArrayList;

    #v3=(Reference);
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Ljava/lang/String;

    .line 406
    .local v1, lookupKey:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mContactId:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    #v3=(LongLo);v4=(LongHi);
    invoke-static {v3, v4, v1}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 407
    .local v2, uri:Landroid/net/Uri;
    #v2=(Reference);
    new-instance v0, Landroid/content/Intent;

    #v0=(UninitRef);
    const-string v3, "android.intent.action.VIEW"

    #v3=(Reference);
    invoke-direct {v0, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 408
    .local v0, intent:Landroid/content/Intent;
    #v0=(Reference);
    iget-object v3, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 409
    return-void
.end method

.method public rotateIfNeeded(F)Z
    .locals 2
    .parameter "currentY"

    .prologue
    .line 353
    iget v0, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mLastDownY:F

    #v0=(Integer);
    sub-float v0, p1, v0

    #v0=(Float);
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mTouchSlop:F

    #v1=(Integer);
    cmpl-float v0, v0, v1

    #v0=(Byte);
    if-lez v0, :cond_1

    .line 354
    iget v0, p0, Lcom/android/launcher2/gadget/FrequentContacts;->mLastDownY:F

    #v0=(Integer);
    cmpl-float v0, p1, v0

    #v0=(Byte);
    if-lez v0, :cond_0

    .line 355
    invoke-direct {p0}, Lcom/android/launcher2/gadget/FrequentContacts;->rotateToPreviousPage()V

    .line 360
    :goto_0
    const/4 v0, 0x1

    .line 362
    :goto_1
    #v0=(Boolean);
    return v0

    .line 358
    :cond_0
    #v0=(Byte);
    invoke-direct {p0}, Lcom/android/launcher2/gadget/FrequentContacts;->rotateToNextPage()V

    goto :goto_0

    .line 362
    :cond_1
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_1
.end method

*/}
