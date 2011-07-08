.class public Landroid/renderscript/Light;
.super Landroid/renderscript/BaseObj;
.source "Light.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Light$Builder;
    }
.end annotation


# direct methods
.method constructor <init>(ILandroid/renderscript/RenderScript;)V
    .locals 0
    .parameter "id"
    .parameter "rs"

    .prologue
    .line 28
    invoke-direct {p0, p2}, Landroid/renderscript/BaseObj;-><init>(Landroid/renderscript/RenderScript;)V

    .line 29
    iput p1, p0, Landroid/renderscript/Light;->mID:I

    .line 30
    return-void
.end method


# virtual methods
.method public setColor(FFF)V
    .locals 2
    .parameter "r"
    .parameter "g"
    .parameter "b"

    .prologue
    .line 33
    iget-object v0, p0, Landroid/renderscript/Light;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 34
    iget-object v0, p0, Landroid/renderscript/Light;->mRS:Landroid/renderscript/RenderScript;

    iget v1, p0, Landroid/renderscript/Light;->mID:I

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/renderscript/RenderScript;->nLightSetColor(IFFF)V

    .line 35
    return-void
.end method

.method public setPosition(FFF)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 38
    iget-object v0, p0, Landroid/renderscript/Light;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 39
    iget-object v0, p0, Landroid/renderscript/Light;->mRS:Landroid/renderscript/RenderScript;

    iget v1, p0, Landroid/renderscript/Light;->mID:I

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/renderscript/RenderScript;->nLightSetPosition(IFFF)V

    .line 40
    return-void
.end method
