.class public Landroid/renderscript/Sampler;
.super Landroid/renderscript/BaseObj;
.source "Sampler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Sampler$Builder;,
        Landroid/renderscript/Sampler$Value;
    }
.end annotation


# direct methods
.method constructor <init>(ILandroid/renderscript/RenderScript;)V
    .locals 0
    .parameter "id"
    .parameter "rs"

    .prologue
    .line 50
    invoke-direct {p0, p2}, Landroid/renderscript/BaseObj;-><init>(Landroid/renderscript/RenderScript;)V

    .line 51
    iput p1, p0, Landroid/renderscript/Sampler;->mID:I

    .line 52
    return-void
.end method
