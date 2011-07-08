.class public Lcom/android/server/status/IconData;
.super Ljava/lang/Object;
.source "IconData.java"


# static fields
.field public static final ICON:I = 0x2

.field public static final TEXT:I = 0x1


# instance fields
.field public iconId:I

.field public iconLevel:I

.field public iconPackage:Ljava/lang/String;

.field public number:I

.field public slot:Ljava/lang/String;

.field public text:Ljava/lang/CharSequence;

.field public type:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method public static makeIcon(Ljava/lang/String;Ljava/lang/String;III)Lcom/android/server/status/IconData;
    .locals 2
    .parameter "slot"
    .parameter "iconPackage"
    .parameter "iconId"
    .parameter "iconLevel"
    .parameter "number"

    .prologue
    .line 73
    new-instance v0, Lcom/android/server/status/IconData;

    invoke-direct {v0}, Lcom/android/server/status/IconData;-><init>()V

    .line 74
    .local v0, data:Lcom/android/server/status/IconData;
    const/4 v1, 0x2

    iput v1, v0, Lcom/android/server/status/IconData;->type:I

    .line 75
    iput-object p0, v0, Lcom/android/server/status/IconData;->slot:Ljava/lang/String;

    .line 76
    iput-object p1, v0, Lcom/android/server/status/IconData;->iconPackage:Ljava/lang/String;

    .line 77
    iput p2, v0, Lcom/android/server/status/IconData;->iconId:I

    .line 78
    iput p3, v0, Lcom/android/server/status/IconData;->iconLevel:I

    .line 79
    iput p4, v0, Lcom/android/server/status/IconData;->number:I

    .line 80
    return-object v0
.end method

.method public static makeText(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/android/server/status/IconData;
    .locals 2
    .parameter "slot"
    .parameter "text"

    .prologue
    .line 84
    new-instance v0, Lcom/android/server/status/IconData;

    invoke-direct {v0}, Lcom/android/server/status/IconData;-><init>()V

    .line 85
    .local v0, data:Lcom/android/server/status/IconData;
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/server/status/IconData;->type:I

    .line 86
    iput-object p0, v0, Lcom/android/server/status/IconData;->slot:Ljava/lang/String;

    .line 87
    iput-object p1, v0, Lcom/android/server/status/IconData;->text:Ljava/lang/CharSequence;

    .line 88
    return-object v0
.end method


# virtual methods
.method public clone()Lcom/android/server/status/IconData;
    .locals 1

    .prologue
    .line 102
    new-instance v0, Lcom/android/server/status/IconData;

    invoke-direct {v0}, Lcom/android/server/status/IconData;-><init>()V

    .line 103
    .local v0, that:Lcom/android/server/status/IconData;
    invoke-virtual {v0, p0}, Lcom/android/server/status/IconData;->copyFrom(Lcom/android/server/status/IconData;)V

    .line 104
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/android/server/status/IconData;->clone()Lcom/android/server/status/IconData;

    move-result-object v0

    return-object v0
.end method

.method public copyFrom(Lcom/android/server/status/IconData;)V
    .locals 1
    .parameter "that"

    .prologue
    .line 92
    iget v0, p1, Lcom/android/server/status/IconData;->type:I

    iput v0, p0, Lcom/android/server/status/IconData;->type:I

    .line 93
    iget-object v0, p1, Lcom/android/server/status/IconData;->slot:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/status/IconData;->slot:Ljava/lang/String;

    .line 94
    iget-object v0, p1, Lcom/android/server/status/IconData;->iconPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/status/IconData;->iconPackage:Ljava/lang/String;

    .line 95
    iget v0, p1, Lcom/android/server/status/IconData;->iconId:I

    iput v0, p0, Lcom/android/server/status/IconData;->iconId:I

    .line 96
    iget v0, p1, Lcom/android/server/status/IconData;->iconLevel:I

    iput v0, p0, Lcom/android/server/status/IconData;->iconLevel:I

    .line 97
    iget v0, p1, Lcom/android/server/status/IconData;->number:I

    iput v0, p0, Lcom/android/server/status/IconData;->number:I

    .line 98
    iget-object v0, p1, Lcom/android/server/status/IconData;->text:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/server/status/IconData;->text:Ljava/lang/CharSequence;

    .line 99
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const-string v5, "null"

    const-string v2, "IconData(slot="

    const-string v4, ")"

    const-string v3, "\'"

    .line 108
    iget v0, p0, Lcom/android/server/status/IconData;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IconData(slot="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/status/IconData;->slot:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/status/IconData;->slot:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " text=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/status/IconData;->text:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    :goto_1
    return-object v0

    .line 109
    :cond_0
    const-string v1, "null"

    move-object v1, v5

    goto :goto_0

    .line 112
    :cond_1
    iget v0, p0, Lcom/android/server/status/IconData;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IconData(slot="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/status/IconData;->slot:Ljava/lang/String;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/status/IconData;->slot:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/status/IconData;->iconPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " iconId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/status/IconData;->iconId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " iconLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/status/IconData;->iconLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v1, "null"

    move-object v1, v5

    goto :goto_2

    .line 119
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IconData(type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/status/IconData;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method
