.class Landroid/location/LocationManager$LpCapabilityComparator;
.super Landroid/location/LocationManager$LpComparator;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LpCapabilityComparator"
.end annotation


# static fields
.field private static final ALTITUDE_SCORE:I = 0x4

.field private static final BEARING_SCORE:I = 0x4

.field private static final SPEED_SCORE:I = 0x4


# instance fields
.field final synthetic this$0:Landroid/location/LocationManager;


# direct methods
.method private constructor <init>(Landroid/location/LocationManager;)V
    .locals 1
    .parameter

    .prologue
    .line 413
    iput-object p1, p0, Landroid/location/LocationManager$LpCapabilityComparator;->this$0:Landroid/location/LocationManager;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/location/LocationManager$LpComparator;-><init>(Landroid/location/LocationManager;Landroid/location/LocationManager$1;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/location/LocationManager;Landroid/location/LocationManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 413
    invoke-direct {p0, p1}, Landroid/location/LocationManager$LpCapabilityComparator;-><init>(Landroid/location/LocationManager;)V

    return-void
.end method

.method private score(Landroid/location/LocationProvider;)I
    .locals 4
    .parameter "p"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 420
    invoke-virtual {p1}, Landroid/location/LocationProvider;->supportsAltitude()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    :goto_0
    invoke-virtual {p1}, Landroid/location/LocationProvider;->supportsBearing()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    :goto_1
    add-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/location/LocationProvider;->supportsSpeed()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v3

    :goto_2
    add-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method


# virtual methods
.method public compare(Landroid/location/LocationProvider;Landroid/location/LocationProvider;)I
    .locals 4
    .parameter "l1"
    .parameter "l2"

    .prologue
    .line 426
    invoke-direct {p0, p1}, Landroid/location/LocationManager$LpCapabilityComparator;->score(Landroid/location/LocationProvider;)I

    move-result v0

    .line 427
    .local v0, a1:I
    invoke-direct {p0, p2}, Landroid/location/LocationManager$LpCapabilityComparator;->score(Landroid/location/LocationProvider;)I

    move-result v1

    .line 428
    .local v1, a2:I
    neg-int v2, v0

    neg-int v3, v1

    invoke-virtual {p0, v2, v3}, Landroid/location/LocationManager$LpCapabilityComparator;->compare(II)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 413
    check-cast p1, Landroid/location/LocationProvider;

    .end local p1
    check-cast p2, Landroid/location/LocationProvider;

    .end local p2
    invoke-virtual {p0, p1, p2}, Landroid/location/LocationManager$LpCapabilityComparator;->compare(Landroid/location/LocationProvider;Landroid/location/LocationProvider;)I

    move-result v0

    return v0
.end method

.method public equals(Landroid/location/LocationProvider;Landroid/location/LocationProvider;)Z
    .locals 3
    .parameter "l1"
    .parameter "l2"

    .prologue
    .line 432
    invoke-direct {p0, p1}, Landroid/location/LocationManager$LpCapabilityComparator;->score(Landroid/location/LocationProvider;)I

    move-result v0

    .line 433
    .local v0, a1:I
    invoke-direct {p0, p2}, Landroid/location/LocationManager$LpCapabilityComparator;->score(Landroid/location/LocationProvider;)I

    move-result v1

    .line 434
    .local v1, a2:I
    if-ne v0, v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
