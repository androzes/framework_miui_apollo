.class public Lcom/android/settings/UNASettingList;
.super Landroid/app/Activity;
.source "UNASettingList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "UNASetting"


# instance fields
.field mRadioButton1:Lcom/sec/android/touchwiz/widget/TwRadioButton;

.field mRadioButton2:Lcom/sec/android/touchwiz/widget/TwRadioButton;

.field mRadioButton3:Lcom/sec/android/touchwiz/widget/TwRadioButton;

.field mRadioGroup:Lcom/sec/android/touchwiz/widget/TwRadioGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const-string v2, "una_setting"

    const-string v1, "UNASetting"

    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 68
    :pswitch_0
    const-string v0, "UNASetting"

    const-string v0, "Wi-Fi only"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/UNASettingList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "una_setting"

    const/4 v1, 0x1

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 72
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/UNASettingList;->finish()V

    .line 73
    return-void

    .line 57
    :pswitch_1
    const-string v0, "UNASetting"

    const-string v0, "Off"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/UNASettingList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "una_setting"

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 62
    :pswitch_2
    const-string v0, "UNASetting"

    const-string v0, "Packet data"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/UNASettingList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "una_setting"

    const/4 v1, 0x2

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 54
    :pswitch_data_0
    .packed-switch 0x7f0b00e4
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const v1, 0x7f030045

    invoke-virtual {p0, v1}, Lcom/android/settings/UNASettingList;->setContentView(I)V

    .line 28
    invoke-virtual {p0}, Lcom/android/settings/UNASettingList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "una_setting"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 29
    .local v0, una_setting_mode:I
    const-string v1, "UNASetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate : Settings.System.UNA_SETTING : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    const v1, 0x7f0b00e3

    invoke-virtual {p0, v1}, Lcom/android/settings/UNASettingList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwRadioGroup;

    iput-object v1, p0, Lcom/android/settings/UNASettingList;->mRadioGroup:Lcom/sec/android/touchwiz/widget/TwRadioGroup;

    .line 32
    const v1, 0x7f0b00e4

    invoke-virtual {p0, v1}, Lcom/android/settings/UNASettingList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwRadioButton;

    iput-object v1, p0, Lcom/android/settings/UNASettingList;->mRadioButton1:Lcom/sec/android/touchwiz/widget/TwRadioButton;

    .line 33
    const v1, 0x7f0b00e5

    invoke-virtual {p0, v1}, Lcom/android/settings/UNASettingList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwRadioButton;

    iput-object v1, p0, Lcom/android/settings/UNASettingList;->mRadioButton2:Lcom/sec/android/touchwiz/widget/TwRadioButton;

    .line 34
    const v1, 0x7f0b00e6

    invoke-virtual {p0, v1}, Lcom/android/settings/UNASettingList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwRadioButton;

    iput-object v1, p0, Lcom/android/settings/UNASettingList;->mRadioButton3:Lcom/sec/android/touchwiz/widget/TwRadioButton;

    .line 36
    packed-switch v0, :pswitch_data_0

    .line 44
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/UNASettingList;->mRadioButton2:Lcom/sec/android/touchwiz/widget/TwRadioButton;

    invoke-virtual {v1, v4}, Lcom/sec/android/touchwiz/widget/TwRadioButton;->setChecked(Z)V

    .line 48
    :goto_0
    iget-object v1, p0, Lcom/android/settings/UNASettingList;->mRadioButton1:Lcom/sec/android/touchwiz/widget/TwRadioButton;

    invoke-virtual {v1, p0}, Lcom/sec/android/touchwiz/widget/TwRadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iget-object v1, p0, Lcom/android/settings/UNASettingList;->mRadioButton2:Lcom/sec/android/touchwiz/widget/TwRadioButton;

    invoke-virtual {v1, p0}, Lcom/sec/android/touchwiz/widget/TwRadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iget-object v1, p0, Lcom/android/settings/UNASettingList;->mRadioButton3:Lcom/sec/android/touchwiz/widget/TwRadioButton;

    invoke-virtual {v1, p0}, Lcom/sec/android/touchwiz/widget/TwRadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    return-void

    .line 38
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/UNASettingList;->mRadioButton1:Lcom/sec/android/touchwiz/widget/TwRadioButton;

    invoke-virtual {v1, v4}, Lcom/sec/android/touchwiz/widget/TwRadioButton;->setChecked(Z)V

    goto :goto_0

    .line 41
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/UNASettingList;->mRadioButton3:Lcom/sec/android/touchwiz/widget/TwRadioButton;

    invoke-virtual {v1, v4}, Lcom/sec/android/touchwiz/widget/TwRadioButton;->setChecked(Z)V

    goto :goto_0

    .line 36
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
