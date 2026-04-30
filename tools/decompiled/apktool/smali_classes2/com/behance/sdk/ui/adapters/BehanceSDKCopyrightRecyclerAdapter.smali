.class public Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightRecyclerAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "BehanceSDKCopyrightRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorSettingsItemViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private callback:Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightRecyclerAdapter$CopyrightCallback;

.field private context:Landroid/content/Context;

.field private selectedLicense:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightRecyclerAdapter$CopyrightCallback;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightRecyclerAdapter;->context:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightRecyclerAdapter;->selectedLicense:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    .line 26
    iput-object p3, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightRecyclerAdapter;->callback:Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightRecyclerAdapter$CopyrightCallback;

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightRecyclerAdapter;)Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightRecyclerAdapter$CopyrightCallback;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightRecyclerAdapter;->callback:Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightRecyclerAdapter$CopyrightCallback;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 60
    invoke-static {}, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;->values()[Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 17
    check-cast p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorSettingsItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightRecyclerAdapter;->onBindViewHolder(Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorSettingsItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorSettingsItemViewHolder;I)V
    .locals 4

    .prologue
    const/16 v0, 0x8

    .line 36
    invoke-virtual {p0}, Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightRecyclerAdapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p2, v1, :cond_0

    .line 37
    iget-object v1, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorSettingsItemViewHolder;->bsdkCardProjectEditorSettingText:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    sget v2, Lcom/behance/sdk/R$string;->bsdk_project_editor_copyright_helper_option:I

    invoke-virtual {v1, v2}, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;->setText(I)V

    .line 38
    iget-object v1, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorSettingsItemViewHolder;->bsdkCardProjectEditorSettingSelected:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 39
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorSettingsItemViewHolder;->bsdkCardProjectEditorSettingContainer:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightRecyclerAdapter$1;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightRecyclerAdapter$1;-><init>(Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightRecyclerAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    :goto_0
    return-void

    .line 46
    :cond_0
    invoke-static {}, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;->values()[Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    move-result-object v1

    aget-object v1, v1, p2

    .line 47
    iget-object v2, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorSettingsItemViewHolder;->bsdkCardProjectEditorSettingText:Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;

    invoke-virtual {v1}, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;->getDescription()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/behance/sdk/ui/customviews/BehanceSDKTextView;->setText(I)V

    .line 48
    iget-object v2, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorSettingsItemViewHolder;->bsdkCardProjectEditorSettingSelected:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightRecyclerAdapter;->selectedLicense:Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    if-ne v1, v3, :cond_1

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 49
    iget-object v0, p1, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorSettingsItemViewHolder;->bsdkCardProjectEditorSettingContainer:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightRecyclerAdapter$2;

    invoke-direct {v2, p0, v1}, Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightRecyclerAdapter$2;-><init>(Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightRecyclerAdapter;Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightRecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorSettingsItemViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorSettingsItemViewHolder;
    .locals 4

    .prologue
    .line 31
    new-instance v0, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorSettingsItemViewHolder;

    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKCopyrightRecyclerAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$layout;->bsdk_card_project_editor_settings_item:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/behance/sdk/ui/adapters/viewholders/BehanceSDKProjectEditorSettingsItemViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method
