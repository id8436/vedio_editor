.class public Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "DrawerOptionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private activeRowIndex:I

.field private ct:Lcom/adobe/creativeapps/settings/utils/CircleTransform;

.field private isSelected:Z

.field private mContext:Landroid/content/Context;

.field private final mDataset:[Ljava/lang/String;

.field private final mListener:Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter$OnItemClickListener;


# direct methods
.method public constructor <init>([Ljava/lang/String;Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter$OnItemClickListener;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter;->isSelected:Z

    .line 33
    const/4 v0, 0x1

    iput v0, p0, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter;->activeRowIndex:I

    .line 40
    iput-object p1, p0, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter;->mDataset:[Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter;->mListener:Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter$OnItemClickListener;

    .line 42
    iput-object p3, p0, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter;->mContext:Landroid/content/Context;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter;)Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter$OnItemClickListener;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter;->mListener:Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter;)Lcom/adobe/creativeapps/settings/utils/CircleTransform;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter;->ct:Lcom/adobe/creativeapps/settings/utils/CircleTransform;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter;->mDataset:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 47
    if-nez p1, :cond_0

    .line 48
    sget v0, Lcom/adobe/creativeapps/settings/R$layout;->drawer_profile_item:I

    .line 53
    :goto_0
    return v0

    .line 50
    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 51
    sget v0, Lcom/adobe/creativeapps/settings/R$layout;->drawer_list_divider:I

    goto :goto_0

    .line 53
    :cond_1
    sget v0, Lcom/adobe/creativeapps/settings/R$layout;->drawer_list_item:I

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 26
    check-cast p1, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter;->onBindViewHolder(Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter$ViewHolder;I)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x4

    .line 132
    iget v0, p0, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter;->activeRowIndex:I

    if-ne p2, v0, :cond_2

    iget-object v0, p1, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter$ViewHolder;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/adobe/creativeapps/settings/R$color;->lib_row_active_bg:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 134
    :cond_0
    :goto_0
    if-ne p2, v5, :cond_3

    .line 228
    :cond_1
    :goto_1
    return-void

    .line 133
    :cond_2
    if-ge p2, v5, :cond_0

    iget-object v0, p1, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter$ViewHolder;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 135
    :cond_3
    if-nez p2, :cond_6

    move-object v0, p1

    .line 136
    check-cast v0, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter$ProfileViewHolder;

    .line 137
    new-instance v1, Lcom/adobe/creativeapps/settings/utils/CircleTransform;

    invoke-direct {v1}, Lcom/adobe/creativeapps/settings/utils/CircleTransform;-><init>()V

    iput-object v1, p0, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter;->ct:Lcom/adobe/creativeapps/settings/utils/CircleTransform;

    .line 138
    iget-object v1, p0, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/k/a/ak;->a(Landroid/content/Context;)Lcom/k/a/ak;

    move-result-object v1

    sget v3, Lcom/adobe/creativeapps/settings/R$drawable;->settings_sa:I

    invoke-virtual {v1, v3}, Lcom/k/a/ak;->a(I)Lcom/k/a/ba;

    move-result-object v1

    iget-object v3, p0, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter;->ct:Lcom/adobe/creativeapps/settings/utils/CircleTransform;

    invoke-virtual {v1, v3}, Lcom/k/a/ba;->a(Lcom/k/a/bi;)Lcom/k/a/ba;

    move-result-object v1

    iget-object v3, v0, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter$ProfileViewHolder;->mProfilePic:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Lcom/k/a/ba;->a(Landroid/widget/ImageView;)V

    .line 148
    if-eqz v2, :cond_4

    .line 149
    iget-object v1, v0, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter$ProfileViewHolder;->mProfileName:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/behance/sdk/BehanceSDKUserProfile;->getFirstName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/behance/sdk/BehanceSDKUserProfile;->getLastName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    invoke-virtual {v2}, Lcom/behance/sdk/BehanceSDKUserProfile;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 151
    invoke-virtual {v2}, Lcom/behance/sdk/BehanceSDKUserProfile;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter$2;

    invoke-direct {v3, p0, v0}, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter$2;-><init>(Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter;Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter$ProfileViewHolder;)V

    invoke-static {v1, v3}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic;->getAvatarFromURL(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/collaboration/models/IAdobeProfilePicCallback;)V

    .line 167
    :cond_4
    :try_start_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->getSharedAuthManagerRestricted()Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->getUserProfile()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 172
    :goto_2
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->getEmail()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 173
    iget-object v0, v0, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter$ProfileViewHolder;->mProfileEmail:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    :cond_5
    :goto_3
    if-eq p2, v5, :cond_1

    .line 220
    iget-object v0, p1, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter$3;

    invoke-direct {v1, p0, p2}, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter$3;-><init>(Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 169
    :catch_0
    move-exception v1

    .line 170
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    move-object v1, v2

    goto :goto_2

    .line 177
    :cond_6
    const/4 v0, 0x1

    if-ne p2, v0, :cond_7

    .line 180
    iget-object v0, p1, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/adobe/creativeapps/settings/R$string;->my_projects:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v0, p1, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/adobe/creativeapps/settings/R$color;->primary:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 183
    iget-object v0, p1, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/adobe/creativeapps/settings/R$drawable;->ic_project:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 188
    :cond_7
    if-ge p2, v5, :cond_8

    iget-object v0, p1, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter;->mDataset:[Ljava/lang/String;

    add-int/lit8 v2, p2, -0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    :cond_8
    if-le p2, v5, :cond_9

    iget-object v0, p1, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter;->mDataset:[Ljava/lang/String;

    add-int/lit8 v2, p2, -0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    :cond_9
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_3

    .line 194
    :pswitch_1
    iget-object v0, p1, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/adobe/creativeapps/settings/R$drawable;->ic_clip:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 197
    :pswitch_2
    iget-object v0, p1, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/adobe/creativeapps/settings/R$drawable;->ic_settings_24dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 200
    :pswitch_3
    iget-object v0, p1, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/adobe/creativeapps/settings/R$drawable;->ic_email_24dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 191
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter$ViewHolder;
    .locals 2

    .prologue
    .line 58
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 59
    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 61
    sget v0, Lcom/adobe/creativeapps/settings/R$layout;->drawer_profile_item:I

    if-ne p2, v0, :cond_0

    .line 62
    sget v0, Lcom/adobe/creativeapps/settings/R$id;->drawer_profile_layout:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 63
    new-instance v1, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter$1;

    invoke-direct {v1, p0}, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter$1;-><init>(Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    invoke-static {v0}, Lcom/h/a/d;->a(Landroid/view/View;)V

    .line 70
    new-instance v1, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter$ProfileViewHolder;

    invoke-direct {v1, v0}, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter$ProfileViewHolder;-><init>(Landroid/view/View;)V

    move-object v0, v1

    .line 78
    :goto_0
    return-object v0

    .line 72
    :cond_0
    sget v0, Lcom/adobe/creativeapps/settings/R$layout;->drawer_list_divider:I

    if-ne p2, v0, :cond_1

    .line 73
    new-instance v0, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter$ViewHolder;

    invoke-direct {v0, v1}, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 76
    :cond_1
    sget v0, Lcom/adobe/creativeapps/settings/R$id;->option_layout:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 77
    invoke-static {v0}, Lcom/h/a/d;->a(Landroid/view/View;)V

    .line 78
    new-instance v1, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter$ViewHolder;

    invoke-direct {v1, v0}, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public setActiveRowIndex(I)V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter;->activeRowIndex:I

    .line 37
    :cond_0
    return-void
.end method
