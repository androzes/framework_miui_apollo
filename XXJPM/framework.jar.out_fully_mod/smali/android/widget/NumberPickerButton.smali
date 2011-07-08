.class Landroid/widget/NumberPickerButton;
.super Landroid/widget/ImageButton;
.source "NumberPickerButton.java"


# instance fields
.field private mButtonRect:Landroid/graphics/Rect;

.field private mNumberPicker:Landroid/widget/NumberPicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    return-void
.end method

.method private cancelLongpress()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Landroid/widget/NumberPickerButton;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->cancelIncrement()V

    .line 135
    iget-object v0, p0, Landroid/widget/NumberPickerButton;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->cancelDecrement()V

    .line 143
    return-void
.end method

.method private cancelLongpressIfRequired(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 106
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 108
    :cond_0
    invoke-direct {p0}, Landroid/widget/NumberPickerButton;->cancelLongpress()V

    .line 125
    :cond_1
    :goto_0
    return-void

    .line 116
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 117
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 118
    .local v0, posX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 120
    .local v1, posY:F
    cmpg-float v2, v0, v4

    if-ltz v2, :cond_3

    cmpg-float v2, v1, v4

    if-ltz v2, :cond_3

    iget-object v2, p0, Landroid/widget/NumberPickerButton;->mButtonRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-gtz v2, :cond_3

    iget-object v2, p0, Landroid/widget/NumberPickerButton;->mButtonRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    .line 121
    :cond_3
    invoke-direct {p0}, Landroid/widget/NumberPickerButton;->cancelLongpress()V

    goto :goto_0
.end method


# virtual methods
.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 101
    invoke-virtual {p0}, Landroid/widget/NumberPickerButton;->cancelLongPress()V

    .line 102
    invoke-super {p0, p1, p2}, Landroid/widget/ImageButton;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 155
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageButton;->onLayout(ZIIII)V

    .line 156
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/widget/NumberPickerButton;->mButtonRect:Landroid/graphics/Rect;

    .line 157
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Landroid/widget/NumberPickerButton;->cancelLongpressIfRequired(Landroid/view/MotionEvent;)V

    .line 76
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Landroid/widget/NumberPickerButton;->cancelLongpressIfRequired(Landroid/view/MotionEvent;)V

    .line 82
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setNumberPicker(Landroid/widget/NumberPicker;)V
    .locals 0
    .parameter "picker"

    .prologue
    .line 70
    iput-object p1, p0, Landroid/widget/NumberPickerButton;->mNumberPicker:Landroid/widget/NumberPicker;

    .line 71
    return-void
.end method
