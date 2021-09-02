import geopandas as gpd
import matplotlib.pyplot as plt
import numpy as np
from  mpl_toolkits.axes_grid1 import make_axes_locatable
import pandas as pd
import matplotlib as mpl
from adjustText import adjust_text
from matplotlib.pyplot import legend


##Import India Shapefile
ind=gpd.read_file(r'F:/neeri/MODIS/BOUNDARY/DISTRICT_4nov19.shp')
ind.to_crs(epsg=4326, inplace=True)

##Dissolve the india shapefile
ind = ind.dissolve(by='STATE')

##Import CSV point dataframe
damage = pd.read_csv(r'C:/Users/USER/Desktop/My Publications/Paper Publication materials- ESR/submission checklists/Damage_final.csv')

##Convert dataframe into geopandas geodataframe
point=gpd.GeoDataFrame(damage, geometry = gpd.points_from_xy(damage['Longitue'],damage['Latitude']))
point.set_crs(epsg=4326, inplace=True)

#Convert India Shapefile to Pandas dataframe
# india_pd = pd.DataFrame(ind)
# india_pd.to_excel(r'F:\neeri\MODIS\BOUNDARY\ind.xlsx',index=True)

#Import the excel file which are updated with Zone
ind_zones = pd.read_excel(r'F:\neeri\MODIS\BOUNDARY\ind.xlsx')

##Merge Ind-Shapefile with India_zone dataframe
ind_merged = ind.merge(ind_zones, on="STATE")
ind_merged.to_crs(epsg=4326, inplace=True)

##Add custom colors to the point
col = mpl.colors.ListedColormap(['red','blue'])

##Plot both points & Polygon
fig, ax = plt.subplots(figsize=(8,10))
ax = plt.gca()
ax.set_aspect(1)
ax1=ax.twiny()
ax.xaxis.set_visible(False)
ax.yaxis.set_visible(False)
ax1.xaxis.set_visible(False)
point.plot(ax=ax1, column ='Class', categorical=True, legend=True, cmap=col,legend_kwds={'loc': 'lower left',
                     'title': '$\\bf{Class}$', 'edgecolor':'k', 'title_fontsize':'12','prop':{'weight':'bold'}})
ind_merged.plot(ax=ax, column='Zone',categorical=True, legend=True,cmap='gist_rainbow',alpha=0.5,legend_kwds={'loc': 'upper right',
                      'title': '$\\bf{Zone}$', 'edgecolor':'k', 'title_fontsize':'12','prop':{'weight':'bold'}})
ind_merged.plot(ax=ax, facecolor='none', edgecolor='peru', column='Zone',cmap='gist_rainbow')

##Label the points
texts=[]
for x,y,label in zip(point.geometry.x, point.geometry.y,point.NAC):
    texts.append(plt.text(x,y,label, fontsize=10,weight='bold'))
adjust_text(texts,autoalign='xy', arrowprops=dict(arrowstyle="->",color='black',lw=0.5))


##Custom colors for bubbleplot & Zones
col1 = mpl.colors.ListedColormap(['saddlebrown','orangered','lime','cyan','royalblue','m','r'])
##Bubble plot - Damage cost -2017
fig, ax = plt.subplots(figsize=(8,10))
ax = plt.gca()
ax.set_aspect(1)
ax.xaxis.set_visible(False)
ax.yaxis.set_visible(False)
ind_merged.plot(ax=ax, facecolor='none', edgecolor='face',column='Zone',cmap='gist_rainbow', alpha=0.5)
point.plot(ax=ax,markersize='Damage-2017', column='Total Damage-2017',legend=True,cmap=col1,scheme='user_defined',classification_kwds={'bins':[1000,2000,5000,10000,15000,20000,28000]},
           legend_kwds={'loc': 'upper right','title': '$\\bf{Million US\$}$', 'edgecolor':'k', 'title_fontsize':'12','prop':{'weight':'bold'}})
texts=[]
for x,y,label in zip(point.geometry.x, point.geometry.y,point.NAC):
    texts.append(plt.text(x,y,label, fontsize=10,weight='bold'))
adjust_text(texts,autoalign='xy', arrowprops=dict(arrowstyle="->",color='black'))

##Bubble plot Damage-2024
fig,  ax = plt.subplots(figsize=(8,10))
ax = plt.gca()
ax.set_aspect(1)
ax.xaxis.set_visible(False)
ax.yaxis.set_visible(False)
ind_merged.plot(ax=ax, facecolor='none',edgecolor='face', column='Zone',cmap='gist_rainbow', alpha=0.7)
point.plot(ax=ax,markersize='Damage-2024', column='Total Damage-2024',legend=True,cmap=col1,scheme='user_defined',classification_kwds={'bins':[1000,2000,5000,10000,15000,20000,29000]},
           legend_kwds={'loc': 'upper right','title': '$\\bf{Million US\$}$', 'edgecolor':'k', 'title_fontsize':'12','prop':{'weight':'bold'}})
texts=[]
for x,y,label in zip(point.geometry.x, point.geometry.y,point.NAC):
    texts.append(plt.text(x,y,label, fontsize=10,weight='bold'))
adjust_text(texts,autoalign='xy', arrowprops=dict(arrowstyle="->",color='black'))