.class Lcom/android/server/policy/EnableAccessibilityController$1;
.super Landroid/os/Handler;
.source "EnableAccessibilityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/EnableAccessibilityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/EnableAccessibilityController;


# direct methods
.method constructor <init>(Lcom/android/server/policy/EnableAccessibilityController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/EnableAccessibilityController;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/server/policy/EnableAccessibilityController$1;->this$0:Lcom/android/server/policy/EnableAccessibilityController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 59
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 58
    :goto_0
    return-void

    .line 61
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/policy/EnableAccessibilityController$1;->this$0:Lcom/android/server/policy/EnableAccessibilityController;

    invoke-static {v1}, Lcom/android/server/policy/EnableAccessibilityController;->-get0(Lcom/android/server/policy/EnableAccessibilityController;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040578

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/policy/EnableAccessibilityController$1;->this$0:Lcom/android/server/policy/EnableAccessibilityController;

    invoke-static {v1}, Lcom/android/server/policy/EnableAccessibilityController;->-get3(Lcom/android/server/policy/EnableAccessibilityController;)Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v5}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    goto :goto_0

    .line 65
    .end local v0    # "text":Ljava/lang/String;
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/policy/EnableAccessibilityController$1;->this$0:Lcom/android/server/policy/EnableAccessibilityController;

    invoke-static {v1}, Lcom/android/server/policy/EnableAccessibilityController;->-get0(Lcom/android/server/policy/EnableAccessibilityController;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x104057a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 66
    .restart local v0    # "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/policy/EnableAccessibilityController$1;->this$0:Lcom/android/server/policy/EnableAccessibilityController;

    invoke-static {v1}, Lcom/android/server/policy/EnableAccessibilityController;->-get3(Lcom/android/server/policy/EnableAccessibilityController;)Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v5}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    goto :goto_0

    .line 69
    .end local v0    # "text":Ljava/lang/String;
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/policy/EnableAccessibilityController$1;->this$0:Lcom/android/server/policy/EnableAccessibilityController;

    invoke-static {v1}, Lcom/android/server/policy/EnableAccessibilityController;->-wrap0(Lcom/android/server/policy/EnableAccessibilityController;)V

    .line 70
    iget-object v1, p0, Lcom/android/server/policy/EnableAccessibilityController$1;->this$0:Lcom/android/server/policy/EnableAccessibilityController;

    invoke-static {v1}, Lcom/android/server/policy/EnableAccessibilityController;->-get2(Lcom/android/server/policy/EnableAccessibilityController;)Landroid/media/Ringtone;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V

    .line 71
    iget-object v1, p0, Lcom/android/server/policy/EnableAccessibilityController$1;->this$0:Lcom/android/server/policy/EnableAccessibilityController;

    invoke-static {v1}, Lcom/android/server/policy/EnableAccessibilityController;->-get3(Lcom/android/server/policy/EnableAccessibilityController;)Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/EnableAccessibilityController$1;->this$0:Lcom/android/server/policy/EnableAccessibilityController;

    invoke-static {v2}, Lcom/android/server/policy/EnableAccessibilityController;->-get0(Lcom/android/server/policy/EnableAccessibilityController;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x1040579

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v5}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    goto :goto_0

    .line 59
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
