.class public Lcom/adobe/utility/progressdialog/PSMixProgressDialog;
.super Landroid/app/Dialog;
.source "PSMixProgressDialog.java"


# instance fields
.field private mCancelable:Z

.field private mContext:Landroid/content/Context;

.field private mDelagate:Lcom/adobe/utility/progressdialog/PSMixProgressDialog$IProgressDialogCallback;

.field private mIconImageId:I

.field private mImageView:Landroid/widget/ImageView;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mProgressText:Ljava/lang/String;

.field private mProgressTextView:Landroid/widget/TextView;

.field private mProgressValue:I

.field private mShowFooter:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ZILjava/lang/String;IZLcom/adobe/utility/progressdialog/PSMixProgressDialog$IProgressDialogCallback;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 47
    iput-object p1, p0, Lcom/adobe/utility/progressdialog/PSMixProgressDialog;->mContext:Landroid/content/Context;

    .line 49
    iput-boolean p2, p0, Lcom/adobe/utility/progressdialog/PSMixProgressDialog;->mShowFooter:Z

    .line 51
    iput p3, p0, Lcom/adobe/utility/progressdialog/PSMixProgressDialog;->mIconImageId:I

    .line 52
    iput-object p4, p0, Lcom/adobe/utility/progressdialog/PSMixProgressDialog;->mProgressText:Ljava/lang/String;

    .line 53
    iput p5, p0, Lcom/adobe/utility/progressdialog/PSMixProgressDialog;->mProgressValue:I

    .line 54
    iput-object p7, p0, Lcom/adobe/utility/progressdialog/PSMixProgressDialog;->mDelagate:Lcom/adobe/utility/progressdialog/PSMixProgressDialog$IProgressDialogCallback;

    .line 56
    iput-boolean p6, p0, Lcom/adobe/utility/progressdialog/PSMixProgressDialog;->mCancelable:Z

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/utility/progressdialog/PSMixProgressDialog;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/adobe/utility/progressdialog/PSMixProgressDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/adobe/utility/progressdialog/PSMixProgressDialog;)Lcom/adobe/utility/progressdialog/PSMixProgressDialog$IProgressDialogCallback;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/adobe/utility/progressdialog/PSMixProgressDialog;->mDelagate:Lcom/adobe/utility/progressdialog/PSMixProgressDialog$IProgressDialogCallback;

    return-object v0
.end method


# virtual methods
.method public getProgress()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/adobe/utility/progressdialog/PSMixProgressDialog;->mProgressValue:I

    return v0
.end method

.method public getProgressDialogCallbackDelegate()Lcom/adobe/utility/progressdialog/PSMixProgressDialog$IProgressDialogCallback;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/adobe/utility/progressdialog/PSMixProgressDialog;->mDelagate:Lcom/adobe/utility/progressdialog/PSMixProgressDialog$IProgressDialogCallback;

    return-object v0
.end method

.method public isFooterShown()Z
    .locals 1

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/adobe/utility/progressdialog/PSMixProgressDialog;->mShowFooter:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 61
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adobe/utility/progressdialog/PSMixProgressDialog;->requestWindowFeature(I)Z

    .line 63
    sget v0, Lcom/adobe/utility/R$layout;->progress_dialog:I

    invoke-virtual {p0, v0}, Lcom/adobe/utility/progressdialog/PSMixProgressDialog;->setContentView(I)V

    .line 66
    sget v0, Lcom/adobe/utility/R$id;->progress_dialog_image:I

    invoke-virtual {p0, v0}, Lcom/adobe/utility/progressdialog/PSMixProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/utility/progressdialog/PSMixProgressDialog;->mImageView:Landroid/widget/ImageView;

    .line 67
    sget v0, Lcom/adobe/utility/R$id;->progress_dialog_text:I

    invoke-virtual {p0, v0}, Lcom/adobe/utility/progressdialog/PSMixProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/utility/progressdialog/PSMixProgressDialog;->mProgressTextView:Landroid/widget/TextView;

    .line 68
    sget v0, Lcom/adobe/utility/R$id;->progress_dialog_progressbar:I

    invoke-virtual {p0, v0}, Lcom/adobe/utility/progressdialog/PSMixProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/adobe/utility/progressdialog/PSMixProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    .line 69
    sget v0, Lcom/adobe/utility/R$id;->progress_dialog_button:I

    invoke-virtual {p0, v0}, Lcom/adobe/utility/progressdialog/PSMixProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 73
    iget-object v1, p0, Lcom/adobe/utility/progressdialog/PSMixProgressDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/adobe/utility/progressdialog/PSMixProgressDialog;->mIconImageId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 74
    iget-object v2, p0, Lcom/adobe/utility/progressdialog/PSMixProgressDialog;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 77
    iget-object v1, p0, Lcom/adobe/utility/progressdialog/PSMixProgressDialog;->mProgressTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/adobe/utility/progressdialog/PSMixProgressDialog;->mProgressText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v1, p0, Lcom/adobe/utility/progressdialog/PSMixProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    iget v2, p0, Lcom/adobe/utility/progressdialog/PSMixProgressDialog;->mProgressValue:I

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 80
    new-instance v1, Lcom/adobe/utility/progressdialog/PSMixProgressDialog$1;

    invoke-direct {v1, p0, v0}, Lcom/adobe/utility/progressdialog/PSMixProgressDialog$1;-><init>(Lcom/adobe/utility/progressdialog/PSMixProgressDialog;Landroid/widget/Button;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-boolean v1, p0, Lcom/adobe/utility/progressdialog/PSMixProgressDialog;->mShowFooter:Z

    if-nez v1, :cond_0

    .line 97
    sget v1, Lcom/adobe/utility/R$id;->progress_dialog_progressbar_layout:I

    invoke-virtual {p0, v1}, Lcom/adobe/utility/progressdialog/PSMixProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 98
    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 99
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/utility/progressdialog/PSMixProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 103
    iget-boolean v0, p0, Lcom/adobe/utility/progressdialog/PSMixProgressDialog;->mCancelable:Z

    invoke-virtual {p0, v0}, Lcom/adobe/utility/progressdialog/PSMixProgressDialog;->setCancelable(Z)V

    .line 104
    invoke-virtual {p0, v3}, Lcom/adobe/utility/progressdialog/PSMixProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 105
    new-instance v0, Lcom/adobe/utility/progressdialog/PSMixProgressDialog$2;

    invoke-direct {v0, p0}, Lcom/adobe/utility/progressdialog/PSMixProgressDialog$2;-><init>(Lcom/adobe/utility/progressdialog/PSMixProgressDialog;)V

    invoke-virtual {p0, v0}, Lcom/adobe/utility/progressdialog/PSMixProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 119
    invoke-virtual {p0}, Lcom/adobe/utility/progressdialog/PSMixProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/h/a/d;->a(Landroid/view/View;)V

    .line 120
    return-void
.end method

.method public setButtonText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 157
    sget v0, Lcom/adobe/utility/R$id;->progress_dialog_button:I

    invoke-virtual {p0, v0}, Lcom/adobe/utility/progressdialog/PSMixProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 158
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 159
    return-void
.end method

.method public setFooterVisibility(Z)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 163
    if-eqz p1, :cond_1

    .line 165
    invoke-virtual {p0}, Lcom/adobe/utility/progressdialog/PSMixProgressDialog;->isFooterShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    iput-boolean p1, p0, Lcom/adobe/utility/progressdialog/PSMixProgressDialog;->mShowFooter:Z

    .line 168
    sget v0, Lcom/adobe/utility/R$id;->progress_dialog_progressbar_layout:I

    invoke-virtual {p0, v0}, Lcom/adobe/utility/progressdialog/PSMixProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 169
    sget v1, Lcom/adobe/utility/R$id;->progress_dialog_button:I

    invoke-virtual {p0, v1}, Lcom/adobe/utility/progressdialog/PSMixProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 170
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 171
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/utility/progressdialog/PSMixProgressDialog;->isFooterShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iput-boolean p1, p0, Lcom/adobe/utility/progressdialog/PSMixProgressDialog;->mShowFooter:Z

    .line 180
    sget v0, Lcom/adobe/utility/R$id;->progress_dialog_progressbar_layout:I

    invoke-virtual {p0, v0}, Lcom/adobe/utility/progressdialog/PSMixProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 181
    sget v1, Lcom/adobe/utility/R$id;->progress_dialog_button:I

    invoke-virtual {p0, v1}, Lcom/adobe/utility/progressdialog/PSMixProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 182
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 183
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public setImage(I)V
    .locals 2

    .prologue
    .line 147
    iput p1, p0, Lcom/adobe/utility/progressdialog/PSMixProgressDialog;->mIconImageId:I

    .line 149
    iget-object v0, p0, Lcom/adobe/utility/progressdialog/PSMixProgressDialog;->mImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 150
    sget v0, Lcom/adobe/utility/R$id;->progress_dialog_image:I

    invoke-virtual {p0, v0}, Lcom/adobe/utility/progressdialog/PSMixProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/utility/progressdialog/PSMixProgressDialog;->mImageView:Landroid/widget/ImageView;

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/adobe/utility/progressdialog/PSMixProgressDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/adobe/utility/progressdialog/PSMixProgressDialog;->mIconImageId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 153
    iget-object v1, p0, Lcom/adobe/utility/progressdialog/PSMixProgressDialog;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 154
    return-void
.end method

.method public setProgress(I)V
    .locals 1

    .prologue
    .line 139
    iput p1, p0, Lcom/adobe/utility/progressdialog/PSMixProgressDialog;->mProgressValue:I

    .line 140
    iget-object v0, p0, Lcom/adobe/utility/progressdialog/PSMixProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    .line 141
    sget v0, Lcom/adobe/utility/R$id;->progress_dialog_progressbar:I

    invoke-virtual {p0, v0}, Lcom/adobe/utility/progressdialog/PSMixProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/adobe/utility/progressdialog/PSMixProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/adobe/utility/progressdialog/PSMixProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 144
    return-void
.end method

.method public setProgressText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 124
    iput-object p1, p0, Lcom/adobe/utility/progressdialog/PSMixProgressDialog;->mProgressText:Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lcom/adobe/utility/progressdialog/PSMixProgressDialog;->mProgressTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 126
    sget v0, Lcom/adobe/utility/R$id;->progress_dialog_text:I

    invoke-virtual {p0, v0}, Lcom/adobe/utility/progressdialog/PSMixProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/utility/progressdialog/PSMixProgressDialog;->mProgressTextView:Landroid/widget/TextView;

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/adobe/utility/progressdialog/PSMixProgressDialog;->mProgressTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    return-void
.end method

.method public setProgressTextColor(I)V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/adobe/utility/progressdialog/PSMixProgressDialog;->mProgressTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 133
    sget v0, Lcom/adobe/utility/R$id;->progress_dialog_text:I

    invoke-virtual {p0, v0}, Lcom/adobe/utility/progressdialog/PSMixProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/utility/progressdialog/PSMixProgressDialog;->mProgressTextView:Landroid/widget/TextView;

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/adobe/utility/progressdialog/PSMixProgressDialog;->mProgressTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 136
    return-void
.end method
