.class public Landroid/widget/ToggleButton;
.super Landroid/widget/CompoundButton;
.source "ToggleButton.java"


# static fields
.field private static final NO_ALPHA:I = 0xff


# instance fields
.field private mDisabledAlpha:F

.field private mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

.field private mTextOff:Ljava/lang/CharSequence;

.field private mTextOn:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 57
    const v0, 0x101004b

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    sget-object v1, Lcom/android/internal/R$styleable;->ToggleButton:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 49
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ToggleButton;->mTextOn:Ljava/lang/CharSequence;

    .line 50
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ToggleButton;->mTextOff:Ljava/lang/CharSequence;

    .line 51
    const/high16 v1, 0x3f00

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/widget/ToggleButton;->mDisabledAlpha:F

    .line 52
    invoke-direct {p0}, Landroid/widget/ToggleButton;->syncTextState()V

    .line 53
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 54
    return-void
.end method

.method private syncTextState()V
    .locals 2

    .prologue
    .line 72
    invoke-virtual {p0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    .line 73
    .local v0, checked:Z
    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/widget/ToggleButton;->mTextOn:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 74
    iget-object v1, p0, Landroid/widget/ToggleButton;->mTextOn:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Landroid/widget/ToggleButton;->setText(Ljava/lang/CharSequence;)V

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    if-nez v0, :cond_0

    iget-object v1, p0, Landroid/widget/ToggleButton;->mTextOff:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Landroid/widget/ToggleButton;->mTextOff:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Landroid/widget/ToggleButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateReferenceToIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "backgroundDrawable"

    .prologue
    .line 131
    instance-of v2, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v2, :cond_0

    .line 132
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    move-object v1, v0

    .line 133
    .local v1, layerDrawable:Landroid/graphics/drawable/LayerDrawable;
    const v2, 0x1020017

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/ToggleButton;->mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 136
    .end local v1           #layerDrawable:Landroid/graphics/drawable/LayerDrawable;
    :cond_0
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 3

    .prologue
    .line 140
    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    .line 142
    iget-object v0, p0, Landroid/widget/ToggleButton;->mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Landroid/widget/ToggleButton;->mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/ToggleButton;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xff

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 145
    :cond_0
    return-void

    .line 143
    :cond_1
    const/high16 v1, 0x437f

    iget v2, p0, Landroid/widget/ToggleButton;->mDisabledAlpha:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_0
.end method

.method public getTextOff()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Landroid/widget/ToggleButton;->mTextOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextOn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Landroid/widget/ToggleButton;->mTextOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 118
    invoke-super {p0}, Landroid/widget/CompoundButton;->onFinishInflate()V

    .line 120
    invoke-virtual {p0}, Landroid/widget/ToggleButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/ToggleButton;->updateReferenceToIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 121
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "d"

    .prologue
    .line 125
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 127
    invoke-direct {p0, p1}, Landroid/widget/ToggleButton;->updateReferenceToIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 128
    return-void
.end method

.method public setChecked(Z)V
    .locals 0
    .parameter "checked"

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 68
    invoke-direct {p0}, Landroid/widget/ToggleButton;->syncTextState()V

    .line 69
    return-void
.end method

.method public setTextOff(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "textOff"

    .prologue
    .line 113
    iput-object p1, p0, Landroid/widget/ToggleButton;->mTextOff:Ljava/lang/CharSequence;

    .line 114
    return-void
.end method

.method public setTextOn(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "textOn"

    .prologue
    .line 95
    iput-object p1, p0, Landroid/widget/ToggleButton;->mTextOn:Ljava/lang/CharSequence;

    .line 96
    return-void
.end method
