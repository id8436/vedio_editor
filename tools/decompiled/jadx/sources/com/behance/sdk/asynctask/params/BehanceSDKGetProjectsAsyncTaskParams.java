package com.behance.sdk.asynctask.params;

import com.behance.sdk.R;
import com.behance.sdk.enums.BehanceSDKProjectsSortOption;
import com.behance.sdk.enums.BehanceSDKProjectsTimeSpan;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKGetProjectsAsyncTaskParams extends BehanceSDKSearchProjectsTaskParams {
    private String city;
    private String country;
    private String fieldId;
    private BehanceSDKProjectsSortOption sortOption;
    private String state;
    private BehanceSDKProjectsTimeSpan timeSpan;

    @Override // com.behance.sdk.asynctask.params.BehanceSDKSearchProjectsTaskParams
    public BehanceSDKProjectsSortOption getSortOption() {
        return this.sortOption;
    }

    @Override // com.behance.sdk.asynctask.params.BehanceSDKSearchProjectsTaskParams
    public void setSortOption(BehanceSDKProjectsSortOption behanceSDKProjectsSortOption) {
        this.sortOption = behanceSDKProjectsSortOption;
    }

    @Override // com.behance.sdk.asynctask.params.BehanceSDKSearchProjectsTaskParams
    public BehanceSDKProjectsTimeSpan getTimeSpan() {
        return this.timeSpan;
    }

    @Override // com.behance.sdk.asynctask.params.BehanceSDKSearchProjectsTaskParams
    public void setTimeSpan(BehanceSDKProjectsTimeSpan behanceSDKProjectsTimeSpan) {
        this.timeSpan = behanceSDKProjectsTimeSpan;
    }

    @Override // com.behance.sdk.asynctask.params.BehanceSDKSearchProjectsTaskParams
    public String getFieldId() {
        return this.fieldId;
    }

    @Override // com.behance.sdk.asynctask.params.BehanceSDKSearchProjectsTaskParams
    public void setFieldId(String str) {
        this.fieldId = str;
    }

    @Override // com.behance.sdk.asynctask.params.BehanceSDKSearchProjectsTaskParams
    public String getCountry() {
        return this.country;
    }

    @Override // com.behance.sdk.asynctask.params.BehanceSDKSearchProjectsTaskParams
    public void setCountry(String str) {
        this.country = str;
    }

    @Override // com.behance.sdk.asynctask.params.BehanceSDKSearchProjectsTaskParams
    public String getState() {
        return this.state;
    }

    @Override // com.behance.sdk.asynctask.params.BehanceSDKSearchProjectsTaskParams
    public void setState(String str) {
        this.state = str;
    }

    @Override // com.behance.sdk.asynctask.params.BehanceSDKSearchProjectsTaskParams
    public String getCity() {
        return this.city;
    }

    @Override // com.behance.sdk.asynctask.params.BehanceSDKSearchProjectsTaskParams
    public void setCity(String str) {
        this.city = str;
    }

    public boolean compareSearchFilters(BehanceSDKGetProjectsAsyncTaskParams behanceSDKGetProjectsAsyncTaskParams) {
        if (behanceSDKGetProjectsAsyncTaskParams == null || this.sortOption != behanceSDKGetProjectsAsyncTaskParams.sortOption || this.timeSpan != behanceSDKGetProjectsAsyncTaskParams.timeSpan) {
            return false;
        }
        if (this.fieldId != behanceSDKGetProjectsAsyncTaskParams.fieldId && (this.fieldId == null || !this.fieldId.equals(behanceSDKGetProjectsAsyncTaskParams.getFieldId()))) {
            return false;
        }
        if (this.country != behanceSDKGetProjectsAsyncTaskParams.country && (this.country == null || !this.country.equals(behanceSDKGetProjectsAsyncTaskParams.getCountry()))) {
            return false;
        }
        if (this.state == behanceSDKGetProjectsAsyncTaskParams.state || (this.state != null && this.state.equals(behanceSDKGetProjectsAsyncTaskParams.getState()))) {
            return (this.city == behanceSDKGetProjectsAsyncTaskParams.city || (this.city != null && this.city.equals(behanceSDKGetProjectsAsyncTaskParams.getCity()))) && super.compareSearchFilters((BehanceSDKSearchProjectsTaskParams) behanceSDKGetProjectsAsyncTaskParams);
        }
        return false;
    }

    public enum ProjectsTimeSpan {
        ALL("all"),
        WEEK("week"),
        MONTH("month"),
        TODAY("today");

        private String actualValue;

        ProjectsTimeSpan(String str) {
            this.actualValue = str;
        }

        public static ProjectsTimeSpan fromName(String str) {
            for (ProjectsTimeSpan projectsTimeSpan : values()) {
                if (projectsTimeSpan.name().equalsIgnoreCase(str)) {
                    return projectsTimeSpan;
                }
            }
            return null;
        }

        public static ProjectsTimeSpan fromName(String str, ProjectsTimeSpan projectsTimeSpan) {
            ProjectsTimeSpan projectsTimeSpanFromName = fromName(str);
            return projectsTimeSpanFromName != null ? projectsTimeSpanFromName : projectsTimeSpan;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.actualValue;
        }
    }

    public enum ProjectsSortOption {
        FEATURED_DATE("featured_date", R.string.bsdk_sort_option_featured, 0),
        APPRECIATIONS("appreciations", R.string.bsdk_sort_option_most_appreciated, 1),
        VIEWS("views", R.string.bsdk_sort_option_most_viewed, 2),
        COMMENTS("comments", R.string.bsdk_sort_option_most_discussed, 3),
        PUBLISHED_DATE("published_date", R.string.bsdk_sort_option_most_recent, 4),
        RELEVANCE("relevance", R.string.bsdk_sort_option_most_relevant, 5);

        String actualValue;
        private int displayNameResourceId;
        int index;

        ProjectsSortOption(String str, int i, int i2) {
            this.actualValue = str;
            this.displayNameResourceId = i;
            this.index = i2;
        }

        public static ProjectsSortOption fromName(String str) {
            for (ProjectsSortOption projectsSortOption : values()) {
                if (projectsSortOption.name().equalsIgnoreCase(str)) {
                    return projectsSortOption;
                }
            }
            return null;
        }

        public static ProjectsSortOption fromName(String str, ProjectsSortOption projectsSortOption) {
            ProjectsSortOption projectsSortOptionFromName = fromName(str);
            return projectsSortOptionFromName != null ? projectsSortOptionFromName : projectsSortOption;
        }

        public static ProjectsSortOption fromIndex(int i) {
            for (ProjectsSortOption projectsSortOption : values()) {
                if (projectsSortOption.getIndex() == i) {
                    return projectsSortOption;
                }
            }
            return FEATURED_DATE;
        }

        public int getDisplayNameResourceId() {
            return this.displayNameResourceId;
        }

        public int getIndex() {
            return this.index;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.actualValue;
        }
    }
}
