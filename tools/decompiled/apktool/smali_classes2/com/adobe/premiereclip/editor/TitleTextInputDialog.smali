.class public Lcom/adobe/premiereclip/editor/TitleTextInputDialog;
.super Landroid/app/Dialog;
.source "TitleTextInputDialog.java"


# static fields
.field private static final MAX_LINES:I = 0xa


# instance fields
.field private defaultText:Ljava/lang/String;

.field private final listener:Lcom/adobe/premiereclip/editor/TitleTextInputDialog$TitleTextChangeListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/adobe/premiereclip/editor/TitleTextInputDialog$TitleTextChangeListener;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 44
    iput-object p2, p0, Lcom/adobe/premiereclip/editor/TitleTextInputDialog;->defaultText:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/adobe/premiereclip/editor/TitleTextInputDialog;->listener:Lcom/adobe/premiereclip/editor/TitleTextInputDialog$TitleTextChangeListener;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/premiereclip/editor/TitleTextInputDialog;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/editor/TitleTextInputDialog;->countLines(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/adobe/premiereclip/editor/TitleTextInputDialog;)Lcom/adobe/premiereclip/editor/TitleTextInputDialog$TitleTextChangeListener;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/TitleTextInputDialog;->listener:Lcom/adobe/premiereclip/editor/TitleTextInputDialog$TitleTextChangeListener;

    return-object v0
.end method

.method private countLines(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 104
    move v1, v0

    .line 105
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 106
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 107
    add-int/lit8 v1, v1, 0x1

    .line 105
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    :cond_1
    return v1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 50
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0, v2}, Lcom/adobe/premiereclip/editor/TitleTextInputDialog;->requestWindowFeature(I)Z

    .line 52
    const v0, 0x7f04018a

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/TitleTextInputDialog;->setContentView(I)V

    .line 53
    const v0, 0x7f12060b

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/TitleTextInputDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 54
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/TitleTextInputDialog;->defaultText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 55
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 60
    new-instance v1, Lcom/adobe/premiereclip/editor/TitleTextInputDialog$1;

    invoke-direct {v1, p0, v0}, Lcom/adobe/premiereclip/editor/TitleTextInputDialog$1;-><init>(Lcom/adobe/premiereclip/editor/TitleTextInputDialog;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 85
    const v0, 0x7f12060a

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/TitleTextInputDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 86
    invoke-static {v0}, Lcom/h/a/d;->a(Landroid/view/View;)V

    .line 87
    new-instance v1, Lcom/adobe/premiereclip/editor/TitleTextInputDialog$2;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/editor/TitleTextInputDialog$2;-><init>(Lcom/adobe/premiereclip/editor/TitleTextInputDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    const v0, 0x7f120031

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/TitleTextInputDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 99
    invoke-static {v0}, Lcom/h/a/d;->a(Landroid/view/View;)V

    .line 100
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/TitleTextInputDialog;->setCanceledOnTouchOutside(Z)V

    .line 101
    return-void
.end method
