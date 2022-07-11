<script setup lang="ts">
import { computed } from "vue";
import { ref, watch } from "vue";

const startHour = ref(7);
const startMinute = ref(30);
const fixMinute = (minute: number) => minute + (startHour.value - 7 ? -1 : 29);

const minuteLen = computed(() => (startHour.value - 8 ? 30 : 60));
const endHour = computed(() =>
  (startHour.value + 8 + (startMinute.value > 29 ? 1 : 0))
    .toString()
    .padStart(2, "0")
);
const endMinute = computed(() =>
  ((startMinute.value + 30) % 60).toString().padStart(2, "0")
);
watch(startHour, (newHour) => (startMinute.value = newHour - 7 ? 0 : 30));
</script>

<template>
  <div>
    <label>Start:</label>
    <select v-model="startHour">
      <option :value="hour" :key="hour" v-for="hour in [7, 8, 9]">
        0{{ hour }}
      </option>
    </select>
    <span> : </span>
    <select v-model="startMinute">
      <option
        :value="fixMinute(minute)"
        :key="minute"
        v-for="minute in minuteLen"
      >
        {{ fixMinute(minute).toString().padStart(2, "0") }}
      </option>
    </select>
  </div>
  <div>
    <label>End:</label>
    <select disabled>
      <option>{{ endHour }}</option>
    </select>
    <span> : </span>
    <select disabled>
      <option>{{ endMinute }}</option>
    </select>
  </div>
</template>

<style>
label {
  display: inline-block;
  min-width: 3em;
}
</style>
