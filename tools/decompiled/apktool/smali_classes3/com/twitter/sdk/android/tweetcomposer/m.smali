.class Lcom/twitter/sdk/android/tweetcomposer/m;
.super Ljava/lang/Object;
.source "ComposerView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/tweetcomposer/ComposerView;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/m;->a:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/m;->a:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    iget-object v0, v0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->j:Lcom/twitter/sdk/android/tweetcomposer/e;

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetcomposer/m;->a:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    invoke-virtual {v1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->getTweetText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/twitter/sdk/android/tweetcomposer/e;->a(Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 113
    return-void
.end method
