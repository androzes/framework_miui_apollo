.class public Lcom/broadcom/bt/app/settings/DunStatusCategory;
.super Landroid/preference/PreferenceCategory;
.source "DunStatusCategory.java"


# instance fields
.field private mStatus:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/app/settings/DunStatusCategory;->mStatus:Z

    .line 20
    const v0, 0x7f03000f

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/settings/DunStatusCategory;->setLayoutResource(I)V

    .line 21
    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/preference/PreferenceCategory;->onBindView(Landroid/view/View;)V

    .line 26
    const v3, 0x7f0b0031

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 27
    .local v1, textView:Landroid/view/View;
    const v3, 0x7f0b0030

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 29
    .local v0, progressBar:Landroid/view/View;
    iget-boolean v3, p0, Lcom/broadcom/bt/app/settings/DunStatusCategory;->mStatus:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    move v2, v3

    .line 30
    .local v2, visibility:I
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 31
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 32
    return-void

    .line 29
    .end local v2           #visibility:I
    :cond_0
    const/4 v3, 0x4

    move v2, v3

    goto :goto_0
.end method

.method public setStatus(Z)V
    .locals 0
    .parameter "statusOn"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/broadcom/bt/app/settings/DunStatusCategory;->mStatus:Z

    .line 40
    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/DunStatusCategory;->notifyChanged()V

    .line 41
    return-void
.end method
