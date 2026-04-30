package com.behance.sdk.project.modules;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class EmbedModule extends BaseModule {
    private static final long serialVersionUID = 2336836168618283848L;
    private String embedContentTxt;
    private int order;

    public EmbedModule(String str) {
        if (str.contains("src=\"//")) {
            this.embedContentTxt = str.replace("src=\"//", "src=\"http://");
        } else {
            this.embedContentTxt = str;
        }
    }

    @Override // com.behance.sdk.project.modules.BaseModule, com.behance.sdk.project.modules.ProjectModule
    public ProjectModuleTypes getType() {
        return ProjectModuleTypes.EMBED;
    }

    public String getEmbedContent() {
        return this.embedContentTxt;
    }

    @Override // com.behance.sdk.project.modules.BaseModule, com.behance.sdk.project.modules.ProjectModule
    public void clear() {
    }

    public int getOrder() {
        return this.order;
    }

    public void setOrder(int i) {
        this.order = i;
    }

    public String getDescription() {
        return "Embed " + this.order;
    }

    public String getSubDescription() {
        return "m" + this.order + ".behance.net";
    }
}
