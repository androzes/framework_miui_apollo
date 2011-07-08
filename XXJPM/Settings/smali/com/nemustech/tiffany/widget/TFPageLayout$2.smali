.class Lcom/nemustech/tiffany/widget/TFPageLayout$2;
.super Ljava/lang/Object;
.source "TFPageLayout.java"

# interfaces
.implements Lcom/nemustech/tiffany/widget/TFPageLayout$PageMarkerPainter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/widget/TFPageLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawMarker(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIIFI)V
    .locals 11
    .parameter "canvas"
    .parameter "rectPage"
    .parameter "orientation"
    .parameter "transitionStyle"
    .parameter "curPagePos"
    .parameter "exactCurPagePos"
    .parameter "pageCount"

    .prologue
    .line 89
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .local v4, sb:Ljava/lang/StringBuilder;
    add-int/lit8 v7, p5, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    const-string v7, "/"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    move-object v0, v4

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 95
    .local v3, paint:Landroid/graphics/Paint;
    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 96
    const/4 v7, -0x1

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 98
    const/high16 v7, 0x4040

    const/4 v8, 0x0

    const/4 v9, 0x0

    const v10, -0xbbbbbc

    invoke-virtual {v3, v7, v8, v9, v10}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 102
    const/16 v2, 0x32

    .line 104
    .local v2, PADDING:I
    if-nez p3, :cond_0

    .line 106
    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v5

    .line 107
    .local v5, x:F
    iget v7, p2, Landroid/graphics/Rect;->bottom:I

    const/16 v8, 0x32

    sub-int/2addr v7, v8

    int-to-float v6, v7

    .line 116
    .local v6, y:F
    :goto_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7, v5, v6, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 117
    return-void

    .line 111
    .end local v5           #x:F
    .end local v6           #y:F
    :cond_0
    iget v7, p2, Landroid/graphics/Rect;->right:I

    const/16 v8, 0x32

    sub-int/2addr v7, v8

    int-to-float v5, v7

    .line 112
    .restart local v5       #x:F
    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v6

    .restart local v6       #y:F
    goto :goto_0
.end method
