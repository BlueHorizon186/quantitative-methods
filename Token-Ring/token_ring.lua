-- Student Name: Ivan David Diaz Sanchez
-- Student ID: A01371166
-- Token Ring Programming Activity

local matrix = require("matrix")

local lambda = 0.01
local mu = 0.1
local omega = 1.0

local states = 135

function main()
  local q = matrix:new(token_ring_mat())
  local qt = matrix.transpose(q)
  local qt_inv = matrix.invert(qt)
end

function token_ring_mat()
  local tr = {}

  for i = 1, states do
    tr[i] = {}
    for j = 1, states do
      tr[i][j] = 0
    end
  end

  -- Lambda Transitions (Generate Packets)

  tr[4][10]    =  tr[4][10]   + lambda
  tr[4][21]    =  tr[4][21]   + lambda
  tr[4][52]    =  tr[4][52]   + lambda
  tr[5][11]    =  tr[5][11]   + lambda
  tr[5][22]    =  tr[5][22]   + lambda
  tr[5][53]    =  tr[5][53]   + lambda
  tr[6][12]    =  tr[6][12]   + lambda
  tr[6][23]    =  tr[6][23]   + lambda
  tr[6][54]    =  tr[6][54]   + lambda
  tr[10][15]   = tr[10][15]   + lambda
  tr[10][27]   = tr[10][27]   + lambda
  tr[10][58]   = tr[10][58]   + lambda
  tr[11][16]   = tr[11][16]   + lambda
  tr[11][28]   = tr[11][28]   + lambda
  tr[11][59]   = tr[11][59]   + lambda
  tr[12][17]   = tr[12][17]   + lambda
  tr[12][29]   = tr[12][29]   + lambda
  tr[12][60]   = tr[12][60]   + lambda
  tr[15][32]   = tr[15][32]   + lambda
  tr[15][63]   = tr[15][63]   + lambda
  tr[16][33]   = tr[16][33]   + lambda
  tr[16][64]   = tr[16][64]   + lambda
  tr[17][34]   = tr[17][34]   + lambda
  tr[17][65]   = tr[17][65]   + lambda
  tr[21][27]   = tr[21][27]   + lambda
  tr[21][37]   = tr[21][37]   + lambda
  tr[21][69]   = tr[21][69]   + lambda
  tr[22][28]   = tr[22][28]   + lambda
  tr[22][38]   = tr[22][38]   + lambda
  tr[22][70]   = tr[22][70]   + lambda
  tr[23][29]   = tr[23][29]   + lambda
  tr[23][39]   = tr[23][39]   + lambda
  tr[23][71]   = tr[23][71]   + lambda
  tr[27][32]   = tr[27][32]   + lambda
  tr[27][42]   = tr[27][42]   + lambda
  tr[27][75]   = tr[27][75]   + lambda
  tr[28][33]   = tr[28][33]   + lambda
  tr[28][43]   = tr[28][43]   + lambda
  tr[28][76]   = tr[28][76]   + lambda
  tr[29][34]   = tr[29][34]   + lambda
  tr[29][44]   = tr[29][44]   + lambda
  tr[29][77]   = tr[29][77]   + lambda
  tr[32][46]   = tr[32][46]   + lambda
  tr[32][80]   = tr[32][80]   + lambda
  tr[33][47]   = tr[33][47]   + lambda
  tr[33][81]   = tr[33][81]   + lambda
  tr[34][48]   = tr[34][48]   + lambda
  tr[34][82]   = tr[34][82]   + lambda
  tr[37][42]   = tr[37][42]   + lambda
  tr[37][85]   = tr[37][85]   + lambda
  tr[38][43]   = tr[38][43]   + lambda
  tr[38][86]   = tr[38][86]   + lambda
  tr[39][44]   = tr[39][44]   + lambda
  tr[39][87]   = tr[39][87]   + lambda
  tr[42][46]   = tr[42][46]   + lambda
  tr[42][90]   = tr[42][90]   + lambda
  tr[43][47]   = tr[43][47]   + lambda
  tr[43][91]   = tr[43][91]   + lambda
  tr[44][48]   = tr[44][48]   + lambda
  tr[44][92]   = tr[44][92]   + lambda
  tr[46][94]   = tr[46][94]   + lambda
  tr[47][95]   = tr[47][95]   + lambda
  tr[48][96]   = tr[48][96]   + lambda
  tr[52][58]   = tr[52][58]   + lambda
  tr[52][69]   = tr[52][69]   + lambda
  tr[52][99]   = tr[52][99]   + lambda
  tr[53][59]   = tr[53][59]   + lambda
  tr[53][70]   = tr[53][70]   + lambda
  tr[53][100]  = tr[53][100]  + lambda
  tr[54][60]   = tr[54][60]   + lambda
  tr[54][71]   = tr[54][71]   + lambda
  tr[54][101]  = tr[54][101]  + lambda
  tr[58][63]   = tr[58][63]   + lambda
  tr[58][75]   = tr[58][75]   + lambda
  tr[58][104]  = tr[58][104]  + lambda
  tr[59][64]   = tr[59][64]   + lambda
  tr[59][76]   = tr[59][76]   + lambda
  tr[59][105]  = tr[59][105]  + lambda
  tr[60][65]   = tr[60][65]   + lambda
  tr[60][77]   = tr[60][77]   + lambda
  tr[60][106]  = tr[60][106]  + lambda
  tr[63][80]   = tr[63][80]   + lambda
  tr[63][108]  = tr[63][108]  + lambda
  tr[64][81]   = tr[64][81]   + lambda
  tr[64][109]  = tr[64][109]  + lambda
  tr[65][82]   = tr[65][82]   + lambda
  tr[65][110]  = tr[65][110]  + lambda
  tr[69][75]   = tr[69][75]   + lambda
  tr[69][85]   = tr[69][85]   + lambda
  tr[69][113]  = tr[69][113]  + lambda
  tr[70][76]   = tr[70][76]   + lambda
  tr[70][86]   = tr[70][86]   + lambda
  tr[70][114]  = tr[70][114]  + lambda
  tr[71][77]   = tr[71][77]   + lambda
  tr[71][87]   = tr[71][87]   + lambda
  tr[71][115]  = tr[71][115]  + lambda
  tr[75][80]   = tr[75][80]   + lambda
  tr[75][90]   = tr[75][90]   + lambda
  tr[75][118]  = tr[75][118]  + lambda
  tr[76][81]   = tr[76][81]   + lambda
  tr[76][91]   = tr[76][91]   + lambda
  tr[76][119]  = tr[76][119]  + lambda
  tr[77][82]   = tr[77][82]   + lambda
  tr[77][92]   = tr[77][92]   + lambda
  tr[77][120]  = tr[77][120]  + lambda
  tr[80][94]   = tr[80][94]   + lambda
  tr[80][122]  = tr[80][122]  + lambda
  tr[81][95]   = tr[81][95]   + lambda
  tr[81][123]  = tr[81][123]  + lambda
  tr[82][96]   = tr[82][96]   + lambda
  tr[82][124]  = tr[82][124]  + lambda

  for j = 1, states do
    sum = 0
    for k = 1, states do
      sum = sum + tr[j][k]
    end
    tr[j][j] = sum * -1
  end

  for i = 1, states do
    tr[i][states] = 1
  end

  return tr
end

main()
