.class public Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "BehanceSDKProjectEditorTextOptionsRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_TEXT_SIZE:I = 0x4b

.field private static final MIN_TEXT_SIZE:I = 0x9


# instance fields
.field private callbacks:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$StyleCallbacks;

.field private context:Landroid/content/Context;

.field private currentTextSize:I

.field private selectedFont:Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;

.field private selectedStyle:Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;ILcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$StyleCallbacks;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;->context:Landroid/content/Context;

    .line 39
    iput-object p5, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;->callbacks:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$StyleCallbacks;

    .line 40
    iput p4, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;->currentTextSize:I

    .line 41
    iput-object p2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;->selectedFont:Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;

    .line 42
    iput-object p3, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;->selectedStyle:Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;)Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;->selectedFont:Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;

    return-object v0
.end method

.method static synthetic access$100(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;)Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$StyleCallbacks;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;->callbacks:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$StyleCallbacks;

    return-object v0
.end method

.method static synthetic access$200(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;)I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;->currentTextSize:I

    return v0
.end method

.method static synthetic access$202(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;I)I
    .locals 0

    .prologue
    .line 24
    iput p1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;->currentTextSize:I

    return p1
.end method

.method static synthetic access$300(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;)Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;->selectedStyle:Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x3

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 146
    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .prologue
    .line 58
    packed-switch p2, :pswitch_data_0

    .line 142
    :goto_0
    return-void

    .line 60
    :pswitch_0
    check-cast p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleItemViewHolder;

    .line 61
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;->selectedFont:Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleItemViewHolder;->bsdkCardProjectEditorStyleTextRight:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;->selectedFont:Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;

    invoke-virtual {v1}, Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;->getDisplayStringResource()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;->setText(I)V

    .line 63
    :cond_0
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleItemViewHolder;->bsdkCardProjectEditorStyleTextLeft:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    sget v1, Lcom/behance/sdk/R$string;->bsdk_project_editor_label_font:I

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;->setText(I)V

    .line 64
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleItemViewHolder;->bsdkCardProjectEditorStyleContainer:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$1;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$1;-><init>(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 72
    :pswitch_1
    check-cast p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleNumberPickerViewHolder;

    .line 73
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleNumberPickerViewHolder;->bsdkCardProjectEditorStyleNumberPickerText:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    sget v1, Lcom/behance/sdk/R$string;->bsdk_project_editor_label_size:I

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;->setText(I)V

    .line 74
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleNumberPickerViewHolder;->bsdkCardProjectEditorStyleNumberPickerCount:Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;

    iget v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;->currentTextSize:I

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->setNumber(I)V

    .line 75
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleNumberPickerViewHolder;->bsdkCardProjectEditorStyleNumberPickerUp:Landroid/widget/ImageView;

    new-instance v1, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$2;

    invoke-direct {v1, p0, p1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$2;-><init>(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleNumberPickerViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleNumberPickerViewHolder;->bsdkCardProjectEditorStyleNumberPickerDown:Landroid/widget/ImageView;

    new-instance v1, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$3;

    invoke-direct {v1, p0, p1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$3;-><init>(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleNumberPickerViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleNumberPickerViewHolder;->bsdkCardProjectEditorStyleNumberPickerCount:Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;

    new-instance v1, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$4;

    invoke-direct {v1, p0, p1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$4;-><init>(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleNumberPickerViewHolder;)V

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/components/BehanceSDKAnimateNumberView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 130
    :pswitch_2
    check-cast p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleItemViewHolder;

    .line 131
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;->selectedStyle:Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleItemViewHolder;->bsdkCardProjectEditorStyleTextRight:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;->selectedStyle:Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;

    invoke-virtual {v1}, Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;->getDisplayStringResource()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;->setText(I)V

    .line 133
    :cond_1
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleItemViewHolder;->bsdkCardProjectEditorStyleTextLeft:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    sget v1, Lcom/behance/sdk/R$string;->bsdk_project_editor_label_style:I

    invoke-virtual {v0, v1}, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;->setText(I)V

    .line 134
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleItemViewHolder;->bsdkCardProjectEditorStyleContainer:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$5;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter$5;-><init>(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 47
    packed-switch p2, :pswitch_data_0

    .line 52
    new-instance v0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleItemViewHolder;

    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$layout;->bsdk_card_project_editor_style_base:I

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleItemViewHolder;-><init>(Landroid/view/View;)V

    :goto_0
    return-object v0

    .line 49
    :pswitch_0
    new-instance v0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleNumberPickerViewHolder;

    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$layout;->bsdk_card_project_editor_style_number_picker:I

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorStyleNumberPickerViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 47
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setSelectedFont(Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;)V
    .locals 1

    .prologue
    .line 155
    iput-object p1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;->selectedFont:Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;

    .line 156
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;->notifyItemChanged(I)V

    .line 157
    return-void
.end method

.method public setSelectedStyle(Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;)V
    .locals 1

    .prologue
    .line 160
    iput-object p1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;->selectedStyle:Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextStyle;

    .line 161
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextOptionsRecyclerAdapter;->notifyItemChanged(I)V

    .line 162
    return-void
.end method
