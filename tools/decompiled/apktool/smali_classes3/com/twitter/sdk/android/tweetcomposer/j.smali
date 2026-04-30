.class Lcom/twitter/sdk/android/tweetcomposer/j;
.super Ljava/lang/Object;
.source "ComposerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/tweetcomposer/ComposerView;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/j;->a:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/j;->a:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    iget-object v0, v0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->j:Lcom/twitter/sdk/android/tweetcomposer/e;

    invoke-interface {v0}, Lcom/twitter/sdk/android/tweetcomposer/e;->a()V

    .line 88
    return-void
.end method
