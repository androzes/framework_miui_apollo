.class Lcom/nemustech/tiffany/world/TFObject$1;
.super Ljava/lang/Object;
.source "TFObject.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/world/TFObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/nemustech/tiffany/world/TFObject;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/nemustech/tiffany/world/TFObject;Lcom/nemustech/tiffany/world/TFObject;)I
    .locals 5
    .parameter "obj1"
    .parameter "obj2"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 1135
    iget-object v1, p1, Lcom/nemustech/tiffany/world/TFObject;->mLocation:[F

    aget v1, v1, v4

    iget-object v2, p2, Lcom/nemustech/tiffany/world/TFObject;->mLocation:[F

    aget v2, v2, v4

    sub-float v0, v1, v2

    .line 1136
    .local v0, distance:F
    cmpl-float v1, v0, v3

    if-lez v1, :cond_0

    .line 1137
    const/4 v1, 0x1

    .line 1140
    :goto_0
    return v1

    .line 1138
    :cond_0
    cmpl-float v1, v0, v3

    if-nez v1, :cond_1

    .line 1139
    const/4 v1, 0x0

    goto :goto_0

    .line 1140
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1134
    check-cast p1, Lcom/nemustech/tiffany/world/TFObject;

    .end local p1
    check-cast p2, Lcom/nemustech/tiffany/world/TFObject;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/nemustech/tiffany/world/TFObject$1;->compare(Lcom/nemustech/tiffany/world/TFObject;Lcom/nemustech/tiffany/world/TFObject;)I

    move-result v0

    return v0
.end method
