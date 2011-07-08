.class Lcom/android/settings/TextToSpeechSettings$3;
.super Ljava/lang/Object;
.source "TextToSpeechSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/TextToSpeechSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TextToSpeechSettings;

.field final synthetic val$chkPref:Landroid/preference/CheckBoxPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/TextToSpeechSettings;Landroid/preference/CheckBoxPreference;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 620
    iput-object p1, p0, Lcom/android/settings/TextToSpeechSettings$3;->this$0:Lcom/android/settings/TextToSpeechSettings;

    iput-object p2, p0, Lcom/android/settings/TextToSpeechSettings$3;->val$chkPref:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 621
    iget-object v0, p0, Lcom/android/settings/TextToSpeechSettings$3;->val$chkPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 622
    iget-object v0, p0, Lcom/android/settings/TextToSpeechSettings$3;->this$0:Lcom/android/settings/TextToSpeechSettings;

    invoke-static {v0}, Lcom/android/settings/TextToSpeechSettings;->access$000(Lcom/android/settings/TextToSpeechSettings;)V

    .line 623
    iget-object v0, p0, Lcom/android/settings/TextToSpeechSettings$3;->this$0:Lcom/android/settings/TextToSpeechSettings;

    invoke-virtual {v0}, Lcom/android/settings/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "driving_mode_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 624
    return-void
.end method
