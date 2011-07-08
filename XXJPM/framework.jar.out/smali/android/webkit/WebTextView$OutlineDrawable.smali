.class Landroid/webkit/WebTextView$OutlineDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "WebTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OutlineDrawable"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 747
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebTextView$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 747
    invoke-direct {p0}, Landroid/webkit/WebTextView$OutlineDrawable;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 749
    invoke-virtual {p0}, Landroid/webkit/WebTextView$OutlineDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 750
    .local v0, bounds:Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 751
    .local v1, paint:Landroid/graphics/Paint;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 753
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 754
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 761
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 764
    const/4 v0, -0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 767
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "cf"

    .prologue
    .line 768
    return-void
.end method
