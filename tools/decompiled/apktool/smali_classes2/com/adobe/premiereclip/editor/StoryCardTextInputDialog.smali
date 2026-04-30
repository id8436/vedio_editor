.class public Lcom/adobe/premiereclip/editor/StoryCardTextInputDialog;
.super Landroid/app/Dialog;
.source "StoryCardTextInputDialog.java"


# instance fields
.field private defaultText:Ljava/lang/String;

.field private final listener:Lcom/adobe/premiereclip/editor/StoryCardTextInputDialog$StoryCardTextChangeListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/adobe/premiereclip/editor/StoryCardTextInputDialog$StoryCardTextChangeListener;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 40
    iput-object p2, p0, Lcom/adobe/premiereclip/editor/StoryCardTextInputDialog;->defaultText:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/adobe/premiereclip/editor/StoryCardTextInputDialog;->listener:Lcom/adobe/premiereclip/editor/StoryCardTextInputDialog$StoryCardTextChangeListener;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/premiereclip/editor/StoryCardTextInputDialog;)Lcom/adobe/premiereclip/editor/StoryCardTextInputDialog$StoryCardTextChangeListener;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/StoryCardTextInputDialog;->listener:Lcom/adobe/premiereclip/editor/StoryCardTextInputDialog$StoryCardTextChangeListener;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/StoryCardTextInputDialog;->requestWindowFeature(I)Z

    .line 48
    const v0, 0x7f04018a

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/StoryCardTextInputDialog;->setContentView(I)V

    .line 49
    const v0, 0x7f12060b

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/StoryCardTextInputDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/StoryCardTextInputDialog;->defaultText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 50
    const v0, 0x7f12060a

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/StoryCardTextInputDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 51
    invoke-static {v0}, Lcom/h/a/d;->a(Landroid/view/View;)V

    .line 52
    new-instance v1, Lcom/adobe/premiereclip/editor/StoryCardTextInputDialog$1;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/editor/StoryCardTextInputDialog$1;-><init>(Lcom/adobe/premiereclip/editor/StoryCardTextInputDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const v0, 0x7f120031

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/StoryCardTextInputDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 62
    invoke-static {v0}, Lcom/h/a/d;->a(Landroid/view/View;)V

    .line 63
    return-void
.end method
