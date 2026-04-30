.class public abstract Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;
.super Landroid/app/Dialog;
.source "PrepareVideoDialog.java"


# static fields
.field private static final STATE_ERROR:I = 0x3

.field private static final STATE_IDLE:I = -0x1

.field private static final STATE_PREPARING:I = 0x0

.field private static final STATE_SAVED:I = 0x2

.field private static final STATE_SAVING:I = 0x1

.field protected static volatile open:Z


# instance fields
.field private activity:Landroid/app/Activity;

.field protected btn_cancel:Landroid/widget/TextView;

.field private cancelString:Ljava/lang/String;

.field private cancellingString:Ljava/lang/String;

.field protected logoDrawableID:I

.field protected logoView:Landroid/widget/ImageView;

.field private mListener:Lcom/adobe/premiereclip/sharing/PrepareVideoDialog$Listener;

.field protected mProgress:Landroid/widget/ProgressBar;

.field protected mProgressStatus:I

.field protected okayString:Ljava/lang/String;

.field protected prepareStatusView:Landroid/widget/TextView;

.field protected prepareString:Ljava/lang/String;

.field private progressDialogID:I

.field protected publishedString:Ljava/lang/String;

.field protected sharingString:Ljava/lang/String;

.field private state:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/adobe/premiereclip/sharing/PrepareVideoDialog$Listener;)V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 78
    iput-object p1, p0, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->activity:Landroid/app/Activity;

    .line 79
    iput-object p2, p0, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->mListener:Lcom/adobe/premiereclip/sharing/PrepareVideoDialog$Listener;

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->mProgressStatus:I

    .line 82
    const v0, 0x7f0a045a

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->prepareString:Ljava/lang/String;

    .line 83
    const v0, 0x7f0a046b

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->sharingString:Ljava/lang/String;

    .line 84
    const v0, 0x7f0a051b

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->publishedString:Ljava/lang/String;

    .line 86
    const v0, 0x7f0a04a7

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->cancelString:Ljava/lang/String;

    .line 87
    const v0, 0x7f0a04a8

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->cancellingString:Ljava/lang/String;

    .line 88
    const v0, 0x7f0a04bd

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->okayString:Ljava/lang/String;

    .line 89
    const v0, 0x7f0202e9

    iput v0, p0, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->logoDrawableID:I

    .line 91
    const/4 v0, -0x1

    iput v0, p0, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->state:I

    .line 93
    const v0, 0x7f04011d

    iput v0, p0, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->progressDialogID:I

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->state:I

    return v0
.end method

.method static synthetic access$002(Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;I)I
    .locals 0

    .prologue
    .line 37
    iput p1, p0, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->state:I

    return p1
.end method

.method static synthetic access$100(Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->cancelSharing()V

    return-void
.end method

.method static synthetic access$200(Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->cancellingString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;)Lcom/adobe/premiereclip/sharing/PrepareVideoDialog$Listener;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->mListener:Lcom/adobe/premiereclip/sharing/PrepareVideoDialog$Listener;

    return-object v0
.end method

.method private cancelSharing()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->mListener:Lcom/adobe/premiereclip/sharing/PrepareVideoDialog$Listener;

    if-eqz v0, :cond_0

    .line 150
    iget v0, p0, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->state:I

    if-nez v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->mListener:Lcom/adobe/premiereclip/sharing/PrepareVideoDialog$Listener;

    invoke-interface {v0}, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog$Listener;->onPreparingCancelled()V

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    iget v0, p0, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 154
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->mListener:Lcom/adobe/premiereclip/sharing/PrepareVideoDialog$Listener;

    invoke-interface {v0}, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog$Listener;->onSavingCancelled()V

    goto :goto_0

    .line 155
    :cond_2
    iget v0, p0, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 156
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->mListener:Lcom/adobe/premiereclip/sharing/PrepareVideoDialog$Listener;

    invoke-interface {v0}, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog$Listener;->onPublished()V

    goto :goto_0
.end method

.method public static isOpen()Z
    .locals 1

    .prologue
    .line 137
    sget-boolean v0, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->open:Z

    return v0
.end method


# virtual methods
.method public addCancelOnClickListener()V
    .locals 2

    .prologue
    .line 223
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->setCanceledOnTouchOutside(Z)V

    .line 224
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->btn_cancel:Landroid/widget/TextView;

    new-instance v1, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog$1;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog$1;-><init>(Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 132
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 133
    const/4 v0, 0x0

    sput-boolean v0, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->open:Z

    .line 134
    return-void
.end method

.method protected getProgressFromPrepareProgress(I)I
    .locals 1

    .prologue
    .line 185
    div-int/lit8 v0, p1, 0x2

    return v0
.end method

.method protected getProgressFromSavingProgress(I)I
    .locals 1

    .prologue
    .line 199
    div-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x32

    return v0
.end method

.method protected goToErrorState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 210
    new-instance v0, Lcom/adobe/premiereclip/dialogs/MessageDialog;

    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->activity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/adobe/premiereclip/dialogs/MessageDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 211
    invoke-virtual {p0}, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->dismiss()V

    .line 212
    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->mListener:Lcom/adobe/premiereclip/sharing/PrepareVideoDialog$Listener;

    if-eqz v1, :cond_0

    .line 213
    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->mListener:Lcom/adobe/premiereclip/sharing/PrepareVideoDialog$Listener;

    invoke-interface {v1}, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog$Listener;->onDismissed()V

    .line 215
    :cond_0
    invoke-virtual {v0}, Lcom/adobe/premiereclip/dialogs/MessageDialog;->show()V

    .line 219
    const/4 v0, 0x3

    iput v0, p0, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->state:I

    .line 220
    return-void
.end method

.method protected goToSavedState()V
    .locals 2

    .prologue
    .line 203
    const/4 v0, 0x2

    iput v0, p0, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->state:I

    .line 204
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->prepareStatusView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->publishedString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->btn_cancel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->okayString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    return-void
.end method

.method protected goToSavingState()V
    .locals 2

    .prologue
    .line 180
    const/4 v0, 0x1

    iput v0, p0, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->state:I

    .line 181
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->prepareStatusView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->sharingString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    return-void
.end method

.method public isSaved()Z
    .locals 2

    .prologue
    .line 145
    iget v0, p0, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSaving()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 141
    iget v1, p0, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->state:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 122
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 99
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->requestWindowFeature(I)Z

    .line 100
    iget v0, p0, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->progressDialogID:I

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->setContentView(I)V

    .line 101
    const v0, 0x7f1204c0

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->btn_cancel:Landroid/widget/TextView;

    .line 102
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->btn_cancel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->cancelString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    const v0, 0x7f1204bf

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->mProgress:Landroid/widget/ProgressBar;

    .line 105
    const v0, 0x7f1204be

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->prepareStatusView:Landroid/widget/TextView;

    .line 106
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->prepareStatusView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->prepareString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    const v0, 0x7f1204bc

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->logoView:Landroid/widget/ImageView;

    .line 109
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->logoView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->logoDrawableID:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 111
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->btn_cancel:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/h/a/d;->a(Landroid/view/View;)V

    .line 112
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->prepareStatusView:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/h/a/d;->a(Landroid/view/View;)V

    .line 114
    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->state:I

    .line 115
    invoke-virtual {p0}, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->addCancelOnClickListener()V

    .line 116
    return-void
.end method

.method protected setLogoDrawableID(I)V
    .locals 0

    .prologue
    .line 166
    iput p1, p0, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->logoDrawableID:I

    .line 167
    return-void
.end method

.method public setPrepareProgress(I)V
    .locals 2

    .prologue
    .line 170
    iget v0, p0, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->state:I

    if-eqz v0, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->getProgressFromPrepareProgress(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 174
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->goToSavingState()V

    goto :goto_0
.end method

.method public setSavingProgress(I)V
    .locals 2

    .prologue
    .line 189
    iget v0, p0, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->getProgressFromSavingProgress(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 193
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->goToSavedState()V

    goto :goto_0
.end method

.method public setSharingString(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->sharingString:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 126
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 127
    const/4 v0, 0x1

    sput-boolean v0, Lcom/adobe/premiereclip/sharing/PrepareVideoDialog;->open:Z

    .line 128
    return-void
.end method
